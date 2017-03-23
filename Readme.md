# Debian packaging under stretch

Building the docker image

```
docker build -t stretch-debuild .
```

Install the build dependencies and build the Debian package.

```
docker run -v $(pwd)/your-debian-repository:/build stretch-debuild /bin/sh -c "mk-build-deps -i debian/control -t 'apt-get --no-install-recommends -y' && debuild -uc -us"
```
