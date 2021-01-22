#!/usr/bin/env bash
# -*- mode: sh -*-

basedir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

main() {
  tmux set-hook -ag client-detached \
    "run-shell $(printf '%q' "${basedir}/libexec/cleanup-unnamed-sessions")" \; \
    set-hook -ag client-session-changed \
    "run-shell $(printf '%q' "${basedir}/libexec/cleanup-unnamed-sessions")"
}

main
