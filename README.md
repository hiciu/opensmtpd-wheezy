# OpenSMTPD for Debian Wheezy

The brilliant [OpenSMTPD](http://opensmtpd.org) is currently not available
(as a package) for Debian Wheezy. This docker image fixes that for you.

## For the impatient

Run this:

```
docker build victorklos/opensmtpd-wheezy
docker run -v $PWD/deb:/srv/deb victorklos/opensmtpd-wheezy
```

Now look in the `deb` folder. Be happy.
