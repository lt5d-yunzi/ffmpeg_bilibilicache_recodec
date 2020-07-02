#!/bin/bash
read -p "填写输入视频文件名称:" v
read -p "填写输入音频文件名称:" a
read -p "填写输出文件名称:" i
echo 音频转码
ffmpeg -i $a.m4s -acodec aac -map_metadata -1 ./temp/audio.aac
echo 视频转码
ffmpeg -i $v.m4s -vcodec copy -map_metadata -1 ./temp/video.mp4
echo 音视混流
ffmpeg -i ./temp/video.mp4 -i ./temp/audio.aac -vcodec copy -acodec copy -map 0:v:0 -map 1:a:0 -shortest ./output/$i.mp4
echo 删除临时文件
rm ./temp/audio.aac
rm ./temp/video.mp4
