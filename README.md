# MyDNS notification
crontabなどと併用することで、MyDNSの通知を自動化できます。
**notification.sh** を実行すると通知が行われます。
予めユーザー名とパスワードを変数に入れておく必要があります。

# ファイルの説明

## notification.sh
**notification.profile** に登録した情報をもとにDDNSの通知を行います。

## notification.profile
シェルスクリプトの変数を定義するシェルスクリプトです。
変数にログインの情報などを入れておきます。
### 書き方
* LOG_DIR: ログファイルを保存するディレクトリへのパス
* ID: MyDNSのID
* PASSWORD: MyDNSのパスワード
