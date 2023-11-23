#!/bin/bash

# Set default values if arguments are not provided
torrent_name="${1:-}"
download_path="${2:-}"
root_path="${3:-}"
torrent_label="${4:-SYNC}"

# Quit the script if the label is "SEED"
if [ "$torrent_label" == "SEED" ]; then
    exit 1
fi

# Set the destination folder
destination="/home4/username/downloads/qbittorrent/$torrent_label"

# Copy the torrent file or folder
if [ -f "$download_path$torrent_name" ]; then
    cp -l "$download_path$torrent_name" "$destination/" && exit 1
elif [ -d "$root_path" ]; then
    cp -lR "$root_path" "$destination/"
fi
