#!/bin/sh
# Records every line in voice/lines.txt with macOS text-to-speech into voice/<id>.m4a.
# The app plays these clips through Web Audio instead of the phone's speech engine,
# because iOS speech pauses music apps and a web page can't stop it from doing that.
set -e
cd "$(dirname "$0")/.."
tmp=$(mktemp -d)
grep -v '^#' voice/lines.txt | while IFS='|' read -r id voice rate text; do
  [ -n "$id" ] || continue
  say -v "$voice" -r "$rate" -o "$tmp/$id.aiff" "$text"
  afconvert -f m4af -d aac -b 40000 -c 1 "$tmp/$id.aiff" "voice/$id.m4a"
done
rm -rf "$tmp"
echo "Made $(ls voice/*.m4a | wc -l | tr -d ' ') clips"
