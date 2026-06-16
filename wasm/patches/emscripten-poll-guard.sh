#!/usr/bin/env bash
# Idempotent Emscripten toolchain fix.
#
# In __syscall_poll, Emscripten dereferences `stream.stream_ops` for every polled
# fd. OTP opens half-emulated socket fds whose stream has no `stream_ops`, which
# throws and aborts the BEAM. Guard it so such fds simply report no events.
#
#   ./emscripten-poll-guard.sh <emsdk-dir>
#
# (This patches the SDK, not this repo — re-run after any emsdk reinstall. The
# build scripts call it automatically.)
set -euo pipefail

EMSDK="${1:?usage: emscripten-poll-guard.sh <emsdk-dir>}"
F="$EMSDK/upstream/emscripten/src/lib/libsyscall.js"
[ -f "$F" ] || { echo "not found: $F"; exit 1; }

if grep -q 'if (stream && stream.stream_ops) {' "$F"; then
  echo "emscripten poll guard: already applied"
  exit 0
fi

# Only the occurrence inside __syscall_poll (the one right after FS.getStream(fd)).
perl -0pi -e \
  's/(var stream = FS\.getStream\(fd\);\s*\n\s*)if \(stream\) \{/${1}if (stream && stream.stream_ops) {/' \
  "$F"

if grep -q 'if (stream && stream.stream_ops) {' "$F"; then
  echo "emscripten poll guard: applied to $F"
else
  echo "emscripten poll guard: FAILED to apply (emscripten layout changed?)" >&2
  exit 1
fi
