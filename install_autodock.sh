#!/bin/bash

set -e

echo "🔽 Downloading AutoDock 4.2.6 for macOS..."
curl -L -o autodocksuite-4.2.6-MacOSX.tar https://autodock.scripps.edu/wp-content/uploads/sites/56/2021/10/autodocksuite-4.2.6-MacOSX.tar

echo "📦 Extracting..."
tar -xf autodocksuite-4.2.6-MacOSX.tar

cd MacOSX || { echo "❌ Failed to enter MacOSX directory"; exit 1; }

echo "🔓 Removing quarantine attributes (you may need to enter your password)..."
sudo xattr -r -d com.apple.quarantine ./autogrid4
sudo xattr -r -d com.apple.quarantine ./autodock4
sudo xattr -r -d com.apple.quarantine /Applications/Dockey.app/

echo "✅ AutoDock is ready to use!"
