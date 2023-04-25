#!/bin/sh

lb config -d bullseye \
          --debian-installer live \
          --debian-installer-distribution bullseye \
          --debian-installer-gui false \
          --archive-areas "main contrib non-free" \
          --debootstrap-options "--variant=minbase" \
          --iso-publisher 'Blop OS for USB Flash' \
          --iso-volume blopos-compact \
          --clean \
          --color \
          --image-name blopos-compact
          
sudo lb build