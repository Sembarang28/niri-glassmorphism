#!/usr/bin/env bash
# Usage: shellctl.sh toggle <launcher|settings|wifi|bluetooth|sound> | close
#        shellctl.sh osd <volumeUp|volumeDown|volumeMute|brightnessUp|brightnessDown>
theme=$(cat "$HOME/.config/niri/theme" 2>/dev/null || echo glassmorphism)
target=panel
if [ "$1" = osd ]; then target=osd; shift; fi
exec qs -p "$HOME/.config/quickshell/$theme" ipc call "$target" "$@"
