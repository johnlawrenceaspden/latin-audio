#!/bin/bash

find . -name "*.mp3" | shuf | while read -r i ; do
    echo "$i";
    mplayer "$i" </dev/null; # read is reading stdin, mplayer must not read it!
done
