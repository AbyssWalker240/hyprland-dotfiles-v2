#!/usr/bin/env bash

awk '
  BEGIN { section = 0 }
  /^### AUR/ { section = "aur"; next }
  /^### standard repos/ { section = "standard"; next }
  /^## / { section = 0 }
  section && /^[[:space:]]*\*/ {
    sub(/^[[:space:]]*\* /, "", $0)
    print
  }
' README.md > package-list

