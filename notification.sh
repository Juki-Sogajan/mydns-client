#!/bin/sh
# MyDNS通知用スクリプト

#
# 設定ファイル読み込み
#

CONFIG_FILE="./notification.profile"

if -r "$1"; then
    echo "A configuration file was specified. The default configuration file is "$CONFIG_FILE"."
    CONFIG_FILE="$1"
fi

source $CONFIG_FILE

# メイン処理

cd $WORKING_DIR

wget --http-user=$ID --http-passwd=$PASSWORD -O ipv4.html $URL_IPV4
wget --http-user=$ID --http-passwd=$PASSWORD -O ipv6.html $URL_IPV6