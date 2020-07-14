# bilibili视频缓存转码合并脚本
# 运行环境
Windows（all） 
linux（需要自行安装ffmpeg）
MacOS(需要自行安装ffmpeg)
Android（需要安装Termux）
iOS/iPadOS（需要越狱后安装终端和文件管理软件使用）
# Linux运行环境安装
支持arm框架——手机也可以使用
```
sudo apt install ffmpeg 
sh start_linux.sh
```
输出文件在output文件夹里
# Windows版使用方法
把从手机上bilibili下载的缓存提取到电脑
找到audio.m4s和video.m4s分别放到audio_input文件夹和video_input文件夹
运行start_test_windows.bat
输出文件在output文件夹里
# iOS/iPadOS使用方法
越狱后添加源（https://yttxcs.com/）安装 MTerminal「终端」和 Filza File Manager「破解版」
打开终端执行以下命令：
```
su root         //进入root用户
password：alpine   //默认密码
apt install git     //安装git
apt install ffmpeg    //安装ffmpeg
//最好修改一下mobile用户的密码
/var/mobile/Containers/Data/Application/7F2DEC80-7D26-4EDC-AB2D-1768EF1E752A/Documents/.Downloads/zzdownloadtaskmanagertask/av/               //哔哩哔哩缓存默认路径
```
