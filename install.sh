#!/bin/bash

(
echo "10"
echo "# Preparing update..."

sleep 1

echo "40"
echo "# Installing files..."

sleep 1

echo "70"
echo "# Applying system changes..."

echo "JoshOS Alpha A002" > "$HOME/joshos-version.txt"

sleep 1

echo "100"
echo "# Finalising update..."

sleep 1
) | zenity --progress \
--title="JoshOS Updater" \
--text="Starting update..." \
--percentage=0 \
--auto-close \
--no-cancel

zenity --info --text="Update installed successfully ✅\nPlease restart JoshOS"
