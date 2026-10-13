#!/usr/bin/env bash
# Start Quickshell with the theme named in ~/.config/niri/theme (glassmorphism | neobrutalism)
theme=$(cat "$HOME/.config/niri/theme" 2>/dev/null || echo glassmorphism)
pkill -x qs 2>/dev/null; sleep 0.3
exec qs -p "$HOME/.config/quickshell/$theme" -d
