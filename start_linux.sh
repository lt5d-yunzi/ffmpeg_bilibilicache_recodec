#!/bin/bash
ffmpeg -i ./audio_input/audio.m4s ./temp/audio.aac
ffmpeg -i ./video_input/video.m4s ./temp/video.mp4
ffmpeg -i ./temp/video.mp4 -i ./temp/audio.aac -vcodec copy -acodec copy -map 0:v:0 -map 1:a:0 -shortest ./output/output.mp4
rm ./temp/audio.aac
rm ./temp/video.mp4
