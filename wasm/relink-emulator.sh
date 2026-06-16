#!/usr/bin/env bash
# Relink the wasm BEAM emulator with the Emscripten runtime settings required to
# actually RUN it. The default OTP link omits these, so we override EMU_LDFLAGS on
# the make line (OTP's link ignores the environment LDFLAGS).
#
#   EMSDK=/path/to/emsdk ./wasm/relink-emulator.sh
#
# Callers can extend the link via EXTRA_LDFLAGS
# The editor passes
#   EXTRA_LDFLAGS="--preload-file <staging>@/"
# to bake the MEMFS image into beam.data. INITIAL_MEMORY is overridable.
#
# STATIC_NIFS (optional, OTP's own form "lib.a:module[:module...]") links one or
# more NIFs statically into the emulator. 
# When set, the generated driver/NIF table is regenerated so
# the static NIF is registered.
#
#   PROXY_TO_PTHREAD          BEAM blocks → run main() off the JS main thread
#   PTHREAD_POOL_SIZE(+STRICT=0)  BEAM spawns scheduler/aux/poll threads
#   EMULATE_FUNCTION_POINTER_CASTS  erts calls fn-pointers through mismatched sigs
#   ALLOW_MEMORY_GROWTH       BEAM allocates a lot
#   (build was --disable-jit: wasm can't run BeamAsm; the C interpreter is used)
set -uo pipefail

ERL_TOP="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${EMSDK:?set EMSDK to your emsdk checkout}"
source "$EMSDK/emsdk_env.sh"
cd "$ERL_TOP" || exit 1

TARGET="bin/wasm32-unknown-emscripten"
INITIAL_MEMORY="${INITIAL_MEMORY:-536870912}"
EXTRA_LDFLAGS="${EXTRA_LDFLAGS:-}"
STATIC_NIFS="${STATIC_NIFS:-}"

rm -f "$TARGET"/beam.emu "$TARGET"/beam.smp "$TARGET"/beam.wasm "$TARGET"/beam.data

make_args=(emulator -k)
if [ -n "$STATIC_NIFS" ]; then
  # force the generated NIF/driver table to regenerate so the static NIF registers
  find erts/emulator -name driver_tab.c -delete 2>/dev/null || true
  find erts/emulator -name driver_tab.o -delete 2>/dev/null || true
  make_args+=("STATIC_NIFS=${STATIC_NIFS}")
fi

emmake make "${make_args[@]}" EMU_LDFLAGS="-pthread -sPROXY_TO_PTHREAD \
  -sPTHREAD_POOL_SIZE=32 -sPTHREAD_POOL_SIZE_STRICT=0 \
  -sALLOW_MEMORY_GROWTH=1 -sINITIAL_MEMORY=${INITIAL_MEMORY} -sSTACK_SIZE=8388608 \
  -sEXIT_RUNTIME=1 -sEMULATE_FUNCTION_POINTER_CASTS=1 \
  -sEXPORTED_RUNTIME_METHODS=callMain,FS,ENV ${EXTRA_LDFLAGS}"
# rc is nonzero because the subsequent erlc/erl_call (-lei) link fails

# Emscripten names the JS loader beam.smp (installed from beam.emu) + beam.wasm
# (+ beam.data when --preload-file was given).
ls -la "$TARGET"/beam.smp "$TARGET"/beam.wasm "$TARGET"/beam.data 2>/dev/null
echo "Built: $TARGET/beam.{smp(=JS loader),wasm,data}"
