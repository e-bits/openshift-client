FROM frolvlad/alpine-glibc:latest

MAINTAINER "Remo Inderbitzin" <remo@inderbitzin.org>

# specify the version string of the oc release
ENV OC_VERSION "v3.11.0"
ENV OC_RELEASE "openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit"



# install the oc client tools
RUN apk add --no-cache ca-certificates curl
RUN curl -sSL https://github.com/openshift/origin/releases/download/$OC_VERSION/$OC_RELEASE.tar.gz \
    | tar --strip-components=1 -xzv -C /usr/bin $OC_RELEASE/oc $OC_RELEASE/kubectl

EXPOSE 8001
