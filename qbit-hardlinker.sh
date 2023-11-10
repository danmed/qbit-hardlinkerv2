#!/bin/bash

# Get the path to the download and the name of the torrent
download_path="$2"
torrent_name="$1"
torrent_label="$3"

[ "${#torrent_label}" -gt 4 ] && torrent_label="$3" || torrent_label="SYNC"


echo "label $torrent_label end " > test.txt

if ["$torrent_label" == "SEED"];
    then
        echo "I'm fucking off" > test.txt
        exit 1
    fi

# The destination folder
destination="/home4/foghorn/downloads/qbittorrent/$torrent_label"
echo "$destination" > test.txt
cp -l "$download_path/$torrent_name" "$destination/"
cp -lR "$download_path/$torrent_name" "$destination/"
