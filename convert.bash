#!/bin/bash
for i in $(find . -name "*.3gp"); do
    echo "$i" ;
    j="${i/3gp/mp3}";
    echo "$j"
    echo ffmpeg -i "$i" -c:a libmp3lame "$j" 
done

for i in $(find . -name "*.json"); do
    echo "$i" ;
    echo sed -i 's/\.3gp/\.mp3' "$i"
done


