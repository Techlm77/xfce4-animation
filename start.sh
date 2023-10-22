#!/bin/bash

image_dir="/home/$(whoami)/Videos/animation"

while true; do
    for image in "$image_dir"/frame*.png; do
        xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-0/workspace0/last-image -s "$image" # Change this line /backdrop/screen0/monitorHDMI-0/workspace0/last-image
        sleep 0.033  # Delay for 1/30th of a second (30fps)
    done
done
