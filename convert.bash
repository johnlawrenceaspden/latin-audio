#!/bin/bash
for i in $(find . -name "*.3gp"); do
    echo "$i" ;
    j="${i/3gp/mp3}";
    echo "$j"
    ffmpeg -i "$i" -c:a libmp3lame "$j" && rm "$i"
done

for i in $(find . -name "*.json"); do
    echo "$i" ;
    sed -i 's/\.3gp/\.mp3/g' "$i"
done


