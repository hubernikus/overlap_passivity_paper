#!/bin/bash
function convert_image () {
	convert original/"$1.jpg" \
			-brightness-contrast 0x15 \
			-crop 1050x850+700+200 \
			-gravity Center \
			-undercolor White -pointsize 80 -annotate  +650-260 "$2 s" \
			"$1.jpg";
}


convert_image franka_obstacle_aware016 "0.00"
convert_image franka_obstacle_aware020 "0.65"

convert_image franka_velocity_conserving021 "0.00"
convert_image franka_velocity_conserving025 "0.65"
