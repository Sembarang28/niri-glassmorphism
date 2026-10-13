#!/usr/bin/env bash
# Usage: shellctl.sh toggle <launcher|settings|wifi|bluetooth|sound> | close
theme=$(cat "$HOME/.config/niri/theme" 2>/dev/null || echo glassmorphism)
exec qs -p "$HOME/.config/quickshell/$theme" ipc call panel "$@"
