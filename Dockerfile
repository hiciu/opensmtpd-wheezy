FROM debian:wheezy

MAINTAINER Victor Klos "victor@victorklos.nl"

ADD apt/unstable.list /etc/apt/sources.list.d/unstable.list
ADD apt/unstable /etc/apt/preferences.d/unstable
RUN apt-get update
RUN apt-get install -y dpkg-dev
RUN apt-get build-dep -y opensmtpd

VOLUME /srv/deb
WORKDIR /srv/deb
ENTRYPOINT [ "/usr/bin/apt-get", "source", "opensmtpd", "--compile" ]
