#!/bin/bash

# filePath=$3
# relativePath=${filepath#./downloads/}
export RCLONE_CONFIG=rclone.conf
topPath=./uploads/ # It will be the path of folder when it has multiple files, otherwise it will be the same as file path.

LIGHT_GREEN_FONT_PREFIX="\033[1;32m"
FONT_COLOR_SUFFIX="\033[0m"
INFO="[${LIGHT_GREEN_FONT_PREFIX}INFO${FONT_COLOR_SUFFIX}]"

echo -e "$(date +"%m/%d %H:%M:%S") ${INFO} Uploading to rclone"

	rclone -v --config="rclone.conf" copy "$topPath" "DRIVE:info"

