# qbit-hardlinkerv2 (based on Categories)
Bash script to automatically hardlink completed torrents

When a torrent is completed this script will automatically recreate the directory structure¹ and create hardlinks of all the source files to the destination directory of your choice. This is really practical if you want keep seeding on private trackers while being able to post-process your files for your media server without wasting storage space.

¹The script can only re-create 3 levels of directories so be sure to check all your torrents before blindly deleting your files. I wasn't able to increase that limit due to my little knowledge in coding, any help would be greatly appreciated.

## How to use the script

1. Run these commands in a folder qBittorrent have access
```
git clone https://github.com/danmed/qbit-hardlinkerv2
```
```
chmod +x qbit-hardlinker.sh
```

2. Edit the destination path for your hardlinked files

```
nano qbit-hardlinker.sh
```

3. Modify the destination folder on line 8 and save ``CTRL+X``

> Caution! Destination folder must be on the same dataset and mount path.

4. qBittorent > Tools > Options > Downloads Tab and scroll down to *Run external program* section and check the box *Run external program on torrent finished*

5. Add the script path, ``%N`` and ``%D`` and ``%L`` parameters in the text field to match the example below

````
/configs/qbit-hardlinker.sh "%N" "%D" "%L"
````
