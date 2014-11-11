# OpenSMTPD for Debian Wheezy

The brilliant [OpenSMTPD](http://opensmtpd.org) is currently not available
(as a package) for Debian Wheezy. This docker image fixes that for you.

## For the impatient

Run this:

```
docker pull victorklos/opensmtpd-wheezy
tmpdeb=`mktemp -d`
docker run -v $tmpdeb:/srv/deb victorklos/opensmtpd-wheezy
cd $tmpdeb
```

Do `ls`. Be happy.


## For developers/DIY

Run this:

```
git clone git@github.com:victorklos/opensmtpd-wheezy.git
docker build -t="victorklos/opensmtpd-wheezy" .
```

And run as above.

## Installing the .deb

First install libevent, then install the package:

```
apt-get install libevent-2.0
dpkg -i opensmtpd_xyz_amd64.deb
```

