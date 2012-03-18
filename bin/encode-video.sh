#!/bin/bash

file=$1
basename=${1%.*}

if [ "${basename##*.}" = "original" ]; then
	basename=${basename%.*}
fi

if [ "$file" = "$basename.mp4" ]; then
	mv $file $basename.original.mp4
	file=$basename.original.mp4
fi

echo $file
echo $basename

# Generates h264 version
ffmpeg -i $file -threads 2 -strict experimental -f mp4 -vcodec libx264 -vpre slow -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2  $basename.mp4

# Generates h264 mobile version
ffmpeg -i $file -threads 2 -strict experimental -f mp4 -vcodec libx264 -vpre slow -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2 -s 480x320 $basename.mobi.mp4

# Generates webm version
ffmpeg -y -i $file -threads 2 -f webm -vcodec libvpx -deinterlace -g 120 -level 216 -profile 0 -qmax 42 -qmin 10 -rc_buf_aggressivity 0.95 -vb 2M -acodec libvorbis -aq 90 -ac 2 $basename.webm


# TODO Generates poster


# iPhone 4 
# ffmpeg -i /Users/sergio/Sites/arquiteturajava-orig.mp4 -threads 0 -strict experimental -f mp4 -vcodec libx264 -vpre slow -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2 -s 640x480 /Users/sergio/Sites/arquiteturajava-orig.iphone.mp4

# iPad
# ffmpeg -i /Users/sergio/Sites/arquiteturajava-orig.mp4 -threads 0 -strict experimental -f mp4 -vcodec libx264 -vpre slow -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2 -s 1024x768 /Users/sergio/Sites/arquiteturajava-orig.ipad.mp4

# Android
# ffmpeg -i /Users/sergio/Sites/arquiteturajava-orig.mp4 -strict experimental -y -f mp4 -vcodec libx264 -vpre slow -vpre ipod640 -crf 22 -acodec aac -ab 160000 -ac 2 -s 480x320 /Users/sergio/Sites/arquiteturajava-orig.dream.mp4

# Theora
# ffmpeg2theora /Users/sergio/Sites/arquiteturajava-orig.mp4 --videoquality 8 --audioquality 6 --frontend -o /Users/sergio/Sites/arquiteturajava-orig.theora.ogv

# Single frame video
# ffmpeg -loop_input -f image2 -i 714x402.png -r 25 -vframes 250 -an -vcodec libx264 -vpre slow -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2 714x402.png.mp4