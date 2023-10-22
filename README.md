# Animated Background/Wallpaper Setup for XFCE4

This guide will help you set up an animated background or wallpaper in XFCE4 using a sequence of PNG images. It provides a step-by-step process to create a visually appealing animated wallpaper on your XFCE4 desktop.

## Prerequisites

Before you begin, make sure you have the following requirements:

- An XFCE4-based Linux distribution installed.
- A GIF file that you want to use as the source for the animated wallpaper.

## Step 1: Create an Animation Directory

Create a directory to store the frames of your animation. Run the following command to create the directory:

```bash
mkdir /home/$(whoami)/Videos/animation
```

## Step 2: Convert the GIF to PNG Frames

Convert your GIF file to a sequence of PNG frames to create the animation. Use the following command to perform the conversion:

```bash
convert find-your-gif.gif -coalesce -quality 100 /home/$(whoami)/Videos/animation/frame%04d.png
```

## Step 3: Capture the Monitor Configuration

You'll need to set the animated background temporarily and capture the monitor configuration. To do this, run:

```bash
xfconf-query -c xfce4-desktop -m
```
During this step, remember to edit the start.sh script with the correct property path for the last image.

## Step 4: Set Up the Animation Script

Make the script executable:

Note: Remember to change the /backdrop/screen0/example/workspace0/last-image property path in the start.sh script to match your specific monitor configuration.

```bash
chmod +x ./start.sh && ./start.sh &
```

Enjoy!!
