#!/bin/bash

# from Go code
# err := exec.Command(current_dir+"/../scripts/open_browser.sh", url).Run()

export DISPLAY=:0

echo "Check if chromium is running"
if [[ -n $(pidof chromium) ]]; then
    echo "  ..chromium is running"
    echo "  ..kill chromium"
    kill -SIGTERM $(pidof chromium)
else
    echo "  ..chromium is NOT running."
fi

echo "Fire up the browser"
nohup chromium --kiosk "$1" &