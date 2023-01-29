#!/bin/sh

echo "Initializing..."
sh ./init.sh

echo "Installing recordings-trimmer's dependency: timecalc..."
if [ -f include/timecalc-linux ]; then mv include/timecalc-linux include/timecalc; fi
sudo cp -f include/timecalc /usr/bin
echo "- Turning timecalc into an executable..."
sudo chmod +x /usr/bin/timecalc

echo "Installing recordings-trimmer..." && echo "- Installing recordings-trimmer command in /usr/bin..."
sudo cp -f recordings-trimmer /usr/bin
echo "- Turning recordings-trimmer into an executable..."
sudo chmod +x /usr/bin/recordings-trimmer
