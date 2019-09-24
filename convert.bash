#!/bin/bash

# Convert all sound files from the 3gp recorded by ankidroid to mp3s, which are more universal

# .3gp files, as recorded by ankidroid, won't play everywhere, so convert them to mp3
for i in $(find . -name "*.3gp"); do
    echo "$i" ;
    j="${i/3gp/mp3}";
    echo "$j"
    ffmpeg -i "$i" -c:a libmp3lame "$j" && rm "$i"
done

# then fiddle the json files so that the sound references point to the new files
for i in $(find . -name "*.json"); do
    echo "$i" ;
    sed -i 's/\.3gp/\.mp3/g' "$i"
done

# If you ask ankidroid to re-record an mp3, it will, but in 3gp format
# catch all the cases where this has happened and re-convert them
for i in $(find . -name "*.mp3"); do
    if [[ $(file -b "$i") == "ISO Media, MPEG v4 system, 3GPP" ]] ; then
    echo "$i" ;
    file "$i"
    j="${i/mp3/really.mp3}";
    echo "$j"
    ffmpeg -i "$i" -c:a libmp3lame "$j"
    mv "$j" "$i"
    fi
done

