#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title YouTube Video Downloader
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⬇️
# @raycast.packageName YouTube Video Downloader 

# Documentation:
# @raycast.description Easily download YouTube videos with MP4 extension
# @raycast.author Raul Craveiro
# @raycast.authorURL https://craveiro.com.br

# @raycast.argument1 { "type": "text", "placeholder": "Query" }

cd ~/Downloads

yt-dlp --merge-output-format mp4 ${1}