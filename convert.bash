mkdir convertmedia; for i in media/*.3gp ; do  j="${i/3gp/mp3}"; k="convertmedia${j/media}"; ffmpeg -i "$i" -c:a libmp3lame "$k" ; done
