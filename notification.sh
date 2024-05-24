#!/bin/sh
# MyDNS通知用スクリプト


# 設定用変数

WORKING_DIR="."

URL_IPV4=https://ipv4.mydns.jp/login.html
URL_IPV6=https://ipv6.mydns.jp/login.html

ID=""
PASSWORD=""


# メイン処理

cd $WORKING_DIR

wget --http-user=$ID --http-passwd=$PASSWORD -O ipv4.html $URL_IPV4
wget --http-user=$ID --http-passwd=$PASSWORD -O ipv6.html $URL_IPV6