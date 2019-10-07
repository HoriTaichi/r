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
