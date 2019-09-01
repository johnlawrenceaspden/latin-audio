#!/bin/bash


if [ $(pwd) == $HOME/ankiexport ] ; then echo "deleting everything preparatory to re-export with crowdanki" ;  else echo "must run from ~/ankiexport"; exit -1 ; fi;

rm -rf Latin__Latin_phrases/media
rm -rf Latin__Lingua_Latina/media
rm -rf Latin__Wheelock_Latin_with_Audio/media
rm -rf Latin__latin_misc/media
rm -rf Latin__llspi_pensa/media
rm -rf Latin__Latin_Poetry/media

rm Latin__Latin_phrases/Latin*.json
rm Latin__Lingua_Latina/Latin*.json
rm Latin__Wheelock_Latin_with_Audio/Latin*.json
rm Latin__latin_misc/Latin*.json
rm Latin__llspi_pensa/Latin*.json
rm Latin__Latin_Poetry/Latin*.json
