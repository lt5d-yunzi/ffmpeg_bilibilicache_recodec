#!/bin/bash
read -p "填写输入视频文件名称:" v
read -p "填写输入音频文件名称:" a
read -p "填写输出文件名称:" i
read -p "填写输出文件后缀|1080p后缀为mp4|4k后缀为mkv|:" c
echo 音频转码
ffmpeg -i $a.m4s -acodec aac -map_metadata -1 ./temp/audio.aac
echo 视频转码
ffmpeg -i $v.m4s -vcodec copy -map_metadata -1 ./temp/video.$c
echo 音视混流
ffmpeg -i ./temp/video.$c -i ./temp/audio.aac -vcodec copy -acodec copy -map 0:v:0 -map 1:a:0 -shortest ./output/$i.$c
echo 删除临时文件
rm ./temp/audio.aac
rm ./temp/video.$c
