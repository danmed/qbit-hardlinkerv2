# qbit-hardlinkerv2 (based on Categories)
Borrowed heavily from

https://github.com/gravelfreeman/qbit-hardlinker

Mostly customised for my own requirements.

* No Label / Category gets hardlinked to a folder called SYNC
* Label of SEED does nothing and exits
* Handles single files and folders of files (not elegantly but it does)

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
