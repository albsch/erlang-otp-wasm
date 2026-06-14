# Erlang/OTP 28.5 → WebAssembly (Emscripten)

Compile the patched OTP tree in this repo (commits 1–2: pristine source + the erts
port patches) into a wasm BEAM that boots and evaluates Erlang in the browser.

## What is cross-compiled
Only **erts** (the BEAM emulator) → `bin/wasm32-unknown-emscripten/beam.{wasm,smp}`.
The `.beam` libraries (kernel/stdlib/compiler/…) are architecture-independent and
taken from a **native** OTP install when the editor assembles the MEMFS image — so
`erlc`/`erl_interface` are not needed (their `-lei` link failure is expected and
ignored).

## Threads → SharedArrayBuffer → must be served cross-origin-isolated
OTP 28 has no `--disable-smp`: `erts_start_schedulers()` always creates OS threads.
So the build uses Emscripten **pthreads** (Web Workers + `SharedArrayBuffer`), which
requires the page to be **cross-origin-isolated** (`COOP: same-origin` +
`COEP: require-corp`). That is the editor's concern (it serves with those headers,
or via a service-worker shim). `--disable-jit` is used because wasm can't run the
BeamAsm JIT — the C interpreter ("emu" flavor) runs instead.

## Build
```sh
export EMSDK=/path/to/emsdk          # https://github.com/emscripten-core/emsdk
# (emsdk install 6.0.0 && emsdk activate 6.0.0)
./wasm/build-otp-wasm.sh all         # emconfigure ./configure … ; emmake make emulator
./wasm/relink-emulator.sh            # relink with the Emscripten runtime flags
```
`build-otp-wasm.sh` also applies one Emscripten **toolchain** fix
(`patches/emscripten-poll-guard.sh` — `__syscall_poll` guards undefined
`stream.stream_ops`); re-run after any emsdk reinstall.

`relink-emulator.sh` overrides `EMU_LDFLAGS` on the make line (OTP's link ignores
the environment `LDFLAGS`) to add `PROXY_TO_PTHREAD`, the pthread pool,
`EMULATE_FUNCTION_POINTER_CASTS`, memory growth, etc. It accepts `EXTRA_LDFLAGS`;
the editor passes `--preload-file <staging>@/` there to bake its MEMFS image into
`beam.data`.

## erts patches (commit 2) recap
- `erl_mmap.{c,h}` — disable `mremap` (Emscripten/musl has none usable)
- `sys.c` — signal-dispatcher tolerates `EAGAIN` on the non-blocking pipe
- `sys_drivers.c` — `forker_start` is a no-op (no fork/exec/socketpair; OS-process
  ports unsupported)
