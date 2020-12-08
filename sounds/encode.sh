echo "Create ogg vorbis file from m4a."
echo "Do not include .m4a file extension."
ffmpeg -i "$1.m4a" -acodec libvorbis -aq 4 -vn -ac 2 -map_metadata 0 "$1.ogg"

