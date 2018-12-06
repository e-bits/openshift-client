# OpenShift Client Tools - Docker Image

## Summary

- A :whale: Docker image for the oc command line tool, used to control Openshift based on alpine. 

## Build the image

Build the image using docker
```bash
$ docker build -t openshift-client .
```

If you are behind a proxy
```
docker build --build-arg HTTP_PROXY=http://domain.compagny:8080 --build-arg HTTPS_PROXY=http://domain.compagny:8080 -t openshift-client .
```

## Usage

>**Note:** See the full [OpenShift CLI documentation](https://docs.openshift.com/enterprise/3.0/cli_reference/index.html) for command line options

Run the container
```bash
$ docker run --rm -it openshift-client oc version
```

Run with local volume that contains your config file:
```
docker run --rm -it -v /path/to/kube_config_folder:/root/.kube openshift-client oc project
```

If you don't have a configration file, you can fist start a container, login with oc command and read the content of the file `/root/.kube/config`
```
docker run --rm -it openshift-client sh    
```
Then, from the new prompt
```
/ # oc login
Server [https://localhost:8443]: https://openshift.compagny

Authentication required for https://openshift.compagny (openshift)
Username: my_user
Password: 
Login successful.

You have one project on this server: "default"

Using project "default".
Welcome! See 'oc help' to get started.
```

Still in the prompt, get the content of the generated config file and place it into a file on your workstation.
```
cat /root/.kube/config
```
You can then run the container with a local volume.

## Command line alias

Optionally, you can add an alias to your local profile so you can run the container as a cli (you may also want to mount kube config or pass env vars...)
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