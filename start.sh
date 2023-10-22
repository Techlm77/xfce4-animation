#!/bin/bash

image_dir="/home/$(whoami)/Videos/animation"

while true; do
    for image in "$image_dir"/*.png; do
        xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-0/workspace0/last-image -s "$image" # Change this line /backdrop/screen0/monitorHDMI-0/workspace0/last-image
        sleep 0.0416  # Delay for 1/24th of a second (24fps) or you can use 0.067 (15fps) or 0.033 (30fps)
    done
done
