# OpenShift Client Tools - Docker Image

## Summary

- A :whale: Docker image for the oc command line tool, used to control Openshift based on alpine. 

## To build the Docker image

- Build the image using docker
```bash
$ docker build -t openshift-client .
```
- Run the container
```bash
$ docker run --rm -it openshift-client oc version
```
- Optionally add an alias to your local profile so you can run the container as a cli (you may also want to mount kube config or pass env vars...)
```bash
$ alias oc='docker run --rm -it openshift-client oc'
$ oc version
```

## Alternatively, you can use the Docker Hub automated build

[![](https://images.microbadger.com/badges/image/ebits/openshift-client.svg)](https://microbadger.com/images/ebits/openshift-client "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/ebits/openshift-client.svg)](https://microbadger.com/images/ebits/openshift-client "Get your own version badge on microbadger.com")

```bash
$ docker pull ebits/openshift-client
```

## Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.