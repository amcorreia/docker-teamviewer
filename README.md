#amcorreia/docker-teamviewer
==================

[![Docker Stars](https://img.shields.io/docker/stars/amcorreia/docker-teamviewer.svg)](https://hub.docker.com/r/amcorreia/docker-teamviewer/)
[![Docker Pulls](https://img.shields.io/docker/pulls/amcorreia/docker-teamviewer.svg)](https://hub.docker.com/r/amcorreia/docker-teamviewer/)
[![Docker Build](https://img.shields.io/docker/automated/amcorreia/docker-teamviewer.svg)](https://hub.docker.com/r/amcorreia/docker-teamviewer/)
[![Layers](https://images.microbadger.com/badges/image/amcorreia/docker-teamviewer.svg)](https://microbadger.com/images/amcorreia/docker-teamviewer)
[![Version](https://images.microbadger.com/badges/version/amcorreia/docker-teamviewer.svg)](https://microbadger.com/images/amcorreia/docker-teamviewer)


Docker container image with [TeamViewer](https://www.teamviewer.com/).

### How to run


```sh
$ docker run -d -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix --name teamviewer amcorreia/docker-teamviewer
```

### How to build


```sh
$ docker build -t amcorreia/docker-teamviewer .
```
