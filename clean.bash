#!/bin/bash

cd ~/ankiexport
rm -rf Latin__Latin_phrases/media
rm -rf Latin__Lingua_Latina/media
rm -rf Latin__Wheelock_Latin_with_Audio/media
rm -rf Latin__latin_misc/media
rm -rf Latin__llspi_pensa/media

# find pesky html that keeps getting sneaked in
for i in $(find . -name "*.json"); do echo "$i" ; grep '<[/]*div[^>]*>' "$i" ; done
for i in $(find . -name "*.json"); do echo "$i" ; grep '&nbsp;' "$i" ; done
