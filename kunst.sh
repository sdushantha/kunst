#!/bin/bash

COVER=/tmp/kunst.jpg
MUSIC_DIR=~/Music/
CURRENT=$(mpc current -f %file%)


update_cover() {
	# extract the album art from the mp3 file and dont show the messsy
	# output of ffmpeg
	ffmpeg -i "$MUSIC_DIR$(mpc current -f %file%)" $COVER -y &> /dev/null

    echo "Extracted album art"

	# resize the image to 250x250
	convert $COVER -resize 250x250 $COVER 

	echo "Resized album art to 250x250"
}



main() {
	update_cover
	echo "Swapped art to $(mpc current)"

	#mpv --keep-open=yes --cursor-autohide=always --no-osd-bar --no-osc --title="cover" --force-window=immediate --geometry 250x250 $COVER &
	sxiv -g 250x250 -b $COVER &


	while true; do
		NEW=$(mpc current -f %file%)
		if [ "$NEW" != "$CURRENT" ];then
			CURRENT=$NEW
			echo "Song changed. Swapping album art"

			update_cover

	#		mpv --keep-open=yes --no-osd-bar --no-osc --title="cover" --force-window --geometry 250x250 $COVER &
			echo "Swapped art to $(mpc current)"
		fi
	done
}


main
