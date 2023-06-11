#!/bin/bash
read -p "Enter file to convert to OGG: " file
echo $file
ffmpeg -i "$file" -map 0:a -c:a libvorbis -q:a 5 $file.ogg
