#!/bin/bash

# Get the path to the download and the name of the torrent
download_path="$2"
torrent_name="$1"
torrent_label="$3"

[ "${#torrent_label}" -gt 4 ] && torrent_label="$3" || torrent_label="SYNC"

if ["$torrent_label" == "SEED"];
    then
        exit 1
    fi

# The destination folder
destination="/home/user/downloads/qbittorrent/$torrent_label"

# Single file torrents
cp -l "$download_path/$torrent_name" "$destination/"
# folders
cp -lR "$download_path/$torrent_name" "$destination/"
