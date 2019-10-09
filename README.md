# R 勉強

## 導入

### Docker Desctopをインストール

https://hub.docker.com/editions/community/docker-ce-desktop-mac

### Dockerfile配下からdocker-compose buildを行う

```
cd r
docker-compose build
```

### コンテナを起動する（Dockerfile配下で実行）

```
docker-compose up -d
```


## Rを動かしてみる

### コンテナに入る
```
docker-compose exec app bash
```

### R実行
```
Rscript code/Pypgm/Hello.r
```
code/Pypgm/Hello.rはHelloWorldを表示するスクリプトになります。


## Rを使ってSlack送信を行う

slackrというライブラリのインストールを行います（１回のみ）
```
cd r
docker-compose exec app bash
R
install.packages("slackr")
```
※国名がきかれるのでJapanの数字を入力してEnterをおす


slackrライブラリを使用するためにスクリプトには下記を記載
```
library(slackr)
```

詳しくはサンプル「code/Pypgm/SlackSendTest.r」をみてください。

## ggplot2を使ってグラフを描画する

下記のライブラリのインストールを行います（１回のみ）
```
# ggplot2を取得する最も簡単な方法は、tidyverse全体をインストールすることです:
install.packages("tidyverse")
```
※国名がきかれるのでJapanの数字を入力してEnterをおす



