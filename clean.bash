#!/bin/bash


if [ $(pwd) == $HOME/ankiexport ] ; then echo "yay" ;  else echo "nay"; exit -1 ; fi;

rm -rf Latin__Latin_phrases/media
rm -rf Latin__Lingua_Latina/media
rm -rf Latin__Wheelock_Latin_with_Audio/media
rm -rf Latin__latin_misc/media
rm -rf Latin__llspi_pensa/media

rm Latin__Latin_phrases/deck.json
rm Latin__Lingua_Latina/deck.json
rm Latin__Wheelock_Latin_with_Audio/deck.json
rm Latin__latin_misc/deck.json
rm Latin__llspi_pensa/deck.json

