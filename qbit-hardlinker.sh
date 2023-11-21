#!/bin/bash

# Get the path to the download and the name of the torrent

torrent_name="$1"
download_path="$2"
root_path="$3"
torrent_label="$4"

# If the torrent_label variable is 4 characters or more then all good
# otherwise set the label to SYNC

if [ -z "${torrent_label}" ];
        then
                torrent_label="SYNC"
        fi

#If the label is SEED then quit the script

if ["$torrent_label" == "SEED"];
        then
                exit 1
        fi

# The destination folder

destination="/home4/foghorn/downloads/qbittorrent/$torrent_label"

# Copy single file torrent and exit if successful

cp -l "$download_path$torrent_name" "$destination/" && exit 1

# Copy multi file (in a folder)

cp -lR "$root_path" "$destination/"
