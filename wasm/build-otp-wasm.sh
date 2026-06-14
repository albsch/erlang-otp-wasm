#!/usr/bin/env bash
# Cross-compile Erlang/OTP tree to wasm32-emscripten
#
# Only the erts emulator is cross-compiled
#
#   EMSDK=/path/to/emsdk  ./wasm/build-otp-wasm.sh [configure|emulator|all]
#
# Needs the Emscripten SDK (https://github.com/emscripten-core/emsdk), e.g.:
#   git clone https://github.com/emscripten-core/emsdk && cd emsdk
#   ./emsdk install 6.0.0 && ./emsdk activate 6.0.0
set -uo pipefail

ERL_TOP="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export ERL_TOP
: "${EMSDK:?set EMSDK to your emsdk checkout (see header)}"
source "$EMSDK/emsdk_env.sh"

# One Emscripten toolchain fix: guard __syscall_poll against half-emulated socket
# fds (idempotent; re-apply after any emsdk reinstall).
"$ERL_TOP/wasm/patches/emscripten-poll-guard.sh" "$EMSDK"

cd "$ERL_TOP" || exit 1
STAGE="${1:-all}"

# Emscripten pthreads BEAM: -pthread for thread detection + compiles.
export CFLAGS="-O2 -pthread -Wno-implicit-function-declaration"
export CXXFLAGS="-O2 -pthread"
export LDFLAGS="-pthread"

do_configure() {
  echo "=== [configure] host=wasm32-unknown-emscripten ==="
  emconfigure ./configure \
    --host=wasm32-unknown-emscripten \
    --build=x86_64-pc-linux-gnu \
    --disable-jit \
    --without-ssl --without-crypto --disable-dynamic-ssl-lib --without-termcap \
    --without-ssh --without-public_key --without-asn1 --without-eldap \
    --without-odbc --without-wx --without-debugger --without-observer \
    --without-et --without-megaco --without-diameter --without-snmp \
    --without-jinterface \
    erl_xcomp_bigendian=no \
    erl_xcomp_double_middle_endian=no \
    erl_xcomp_clock_gettime_cpu_time=no \
    erl_xcomp_getaddrinfo=no \
    erl_xcomp_gethrvtime_procfs_ioctl=no \
    erl_xcomp_dlsym_brk_wrappers=no \
    erl_xcomp_kqueue=no \
    erl_xcomp_linux_clock_gettime_correction=no \
    erl_xcomp_linux_nptl=yes \
    erl_xcomp_linux_usable_sigaltstack=no \
    erl_xcomp_linux_usable_sigusrx=no \
    erl_xcomp_poll=no \
    erl_xcomp_putenv_copy=no \
    erl_xcomp_reliable_fpe=no \
    erl_xcomp_posix_memalign=yes \
    erl_xcomp_code_model_small=no
}

# Build the erts emulator AND the library .beams. The library apps (kernel,
# stdlib, compiler, syntax_tools, …) are compiled by the host bootstrap erlc into
# lib/*/ebin — those .beams are architecture-independent and are exactly what the
# editor bakes into the MEMFS image (so no separate native OTP is needed for them).
# -k keeps going past the erl_interface/erlc -lei link failure, which is expected
# and harmless (those native binaries are not used).
do_emulator() {
  echo "=== [emulator+libs] building erts + library .beams ==="
  emmake make emulator libs -k -j"$(nproc)"
}

case "$STAGE" in
  configure) do_configure ;;
  emulator)  do_emulator ;;
  all)       do_configure && do_emulator ;;
  *) echo "unknown stage: $STAGE (configure|emulator|all)"; exit 2 ;;
esac
echo "Next: ./wasm/relink-emulator.sh to produce a runnable beam.{js,wasm}."
