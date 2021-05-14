# Hath - Hentai@Home Container Image

## Description

From [ehwiki](https://ehwiki.org/wiki/Hentai@Home):

Hentai@Home (H@H) is an open-source Peer-2-Peer gallery
distribution system which reduces the load on the E-Hentai Galleries.

## Usage

```sh
# start H@H client
# $PORT, $CLIENT_ID and $CLIENT_KEY could be found in H@H settings panel
docker run -d --restart always --name hath -p $PORT:$PORT -e CLIENT_ID=$CLIENT_ID -e CLIENT_KEY=$CLIENT_KEY ghcr.io/zisu-dev/hath:1.6.1
```
