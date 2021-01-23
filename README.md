# tmux-cleanup-unnamed-sessions

Automatically clean up unnamed & unattached tmux sessions.

## Install

### Installation with tpm (recommended)

Add the following line to your `.tmux.conf`:

```tmux
set -g @plugin 'sei40kr/tmux-cleanup-unnamed-sessions
```

## Differences from `destroy-unattached`

`destroy-unattached` option enables you to destroy unattached sessions no matter
they're named or not. This plugin destroys only unattached & unnamed sessions.
