FROM debian:wheezy

MAINTAINER Victor Klos "victor@victorklos.nl"

ADD apt/unstable.list /etc/apt/sources.list.d/unstable.list
ADD apt/unstable /etc/apt/preferences.d/unstable
RUN apt-get update
RUN apt-get install -y dpkg-dev libsqlite3-dev libmysqlclient-dev
RUN apt-get build-dep -y opensmtpd

VOLUME /srv/deb
WORKDIR /srv/deb

CMD apt-get source opensmtpd && cd opensmtpd*/ && sed -i 's/dh_auto_configure -- \\/dh_auto_configure -- --with-experimental-sqlite --with-experimental-mysql \\/' debian/rules && dpkg-buildpackage
