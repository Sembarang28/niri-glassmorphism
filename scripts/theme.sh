#!/usr/bin/env bash
# Usage: theme.sh glassmorphism | neobrutalism | toggle
# Switches both the niri look (themes/*.kdl, live-reloaded) and the Quickshell theme.
dir="$HOME/.config/niri"
cur=$(cat "$dir/theme" 2>/dev/null || echo glassmorphism)
case "${1:-toggle}" in
  glass|glassmorphism) new=glassmorphism ;;
  neo|neobrutalism)    new=neobrutalism ;;
  toggle) [ "$cur" = glassmorphism ] && new=neobrutalism || new=glassmorphism ;;
  *) echo "usage: $0 glassmorphism|neobrutalism|toggle"; exit 1 ;;
esac
echo "$new" > "$dir/theme"
echo "include \"themes/$new.kdl\"" > "$dir/theme.kdl"   # niri reloads config automatically
"$dir/scripts/start-shell.sh" >/dev/null 2>&1
