#!/bin/sh
# MyDNS通知用スクリプト

#
# 設定ファイル読み込み
#

CONFIG_FILE="./notification.profile"

if [ -f "$1" ]; then
    CONFIG_FILE="$1"
    echo "A configuration file was specified."
fi

if [ -r "$CONFIG_FILE" ]; then
    echo "The configuration file is "$CONFIG_FILE"."
else
    echo "A configuration file was not found."
    exit 1
fi

source $CONFIG_FILE

# メイン処理

cd $WORKING_DIR

wget --http-user=$ID --http-passwd=$PASSWORD -O ipv4.html $URL_IPV4
wget --http-user=$ID --http-passwd=$PASSWORD -O ipv6.html $URL_IPV6