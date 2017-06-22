#
# DESCRIPTION:    Teamviewer image
# TO_BUILD:       docker build -t amcorreia/docker-teamviewer .
# TO_RUN:         docker run -d -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix --name teamviewer amcorreia/docker-teamviewer

FROM debian:jessie

MAINTAINER Alessandro Madruga Correia <mutley.sandro@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DISPLAY :0.0

RUN dpkg --add-architecture i386 && \
    apt-get update --yes --quiet && \
    apt-get install --yes --quiet --no-install-recommends \
        wget xz-utils libc6:i386 libdbus-1-3 libasound2 libsm6 libxfixes3 \
        libdbus-1-3:i386 libasound2:i386 libexpat1:i386 libfontconfig1:i386 \
        libfreetype6:i386 libjpeg62:i386 libpng12-0:i386 libsm6:i386 \
        libxdamage1:i386 libxext6:i386 libxfixes3:i386 libxinerama1:i386 \
        libxrandr2:i386 libxrender1:i386 libxtst6:i386 zlib1g:i386 && \
    wget --no-check-certificate -q -O /tmp/teamviewer_i386.tar.xz "http://download.teamviewer.com/download/teamviewer_i386.tar.xz" && \
    tar xf /tmp/teamviewer_i386.tar.xz -C /opt/ && \
    rm /tmp/teamviewer_i386.tar.xz && \
    apt-get remove --auto-remove --yes --purge wget && \
    apt-get clean --yes && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/tmp/.X11-unix"]

CMD /opt/teamviewer/teamviewer
