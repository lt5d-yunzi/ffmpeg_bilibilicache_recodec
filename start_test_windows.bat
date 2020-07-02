@echo off
title 音频转码
ffmpeg.exe -i ./audio_input/audio.m4s ./temp/audio.aac
title 视频转码
ffmpeg.exe -i ./video_input/video.m4s ./temp/video.mp4
title 音视混流
ffmpeg.exe -i ./temp/video.mp4 -i ./temp/audio.aac -vcodec copy -acodec copy -map 0:v:0 -map 1:a:0 -map_metadata -1  -shortest ./output/output.mp4
title 删除临时文件
del .\temp\audio.aac
del .\temp\video.mp4
pause