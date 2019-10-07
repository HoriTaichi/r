# R 勉強

## 導入

### Docker Desctopをインストール

https://hub.docker.com/editions/community/docker-ce-desktop-mac

### Dockerfile直下からdocker-compose buildを行う

```
cd r
docker-compose build
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
