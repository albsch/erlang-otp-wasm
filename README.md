# Erlang/OTP 29.0.2 -> WebAssembly (Emscripten)

Compile the patched OTP tree in this repo into a wasm BEAM 
that boots and evaluates Erlang in the browser.

## What is cross-compiled
Only **erts** (the BEAM emulator) -> `bin/wasm32-unknown-emscripten/beam.{wasm,smp}`.
The `.beam` libraries (kernel/stdlib/compiler/…) are architecture-independent and
taken from a **native** OTP install when the editor assembles the MEMFS image. 

## Threads and SharedArrayBuffer
OTP 29 has no `--disable-smp`: `erts_start_schedulers()` always creates OS threads.
So the build uses Emscripten **pthreads** (Web Workers + `SharedArrayBuffer`), which
requires the page to be **cross-origin-isolated**. 

`--disable-jit` is used because wasm can't run the BeamAsm JIT.

## erts patches
- `erl_mmap.{c,h}`: disable `mremap` (Emscripten/musl has none usable)
- `sys.c`: signal-dispatcher tolerates `EAGAIN` on the non-blocking pipe
- `sys_drivers.c`: `forker_start` is a no-op (removed OS process ports)
