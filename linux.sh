#!/bin/bash
PROFILE_DIR=$(ls -d ~/.mozilla/firefox/*.default-release 2>/dev/null | head -1)

if [ -z "$PROFILE_DIR" ]; then
  echo "Error: No Firefox profile found matching *.default-release"
  exit 1
fi

rm -f "$PROFILE_DIR/chrome"
ln -s "$(pwd)/chrome" "$PROFILE_DIR/chrome"