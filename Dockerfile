FROM frolvlad/alpine-glibc:latest
MAINTAINER "Remo Inderbitzin" <remo@inderbitzin.org>
ENV OC_VERSION "v3.9.0"
ENV OC_RELEASE "openshift-origin-client-tools-v3.9.0-191fece-linux-64bit"
ADD https://github.com/openshift/origin/releases/download/$OC_VERSION/$OC_RELEASE.tar.gz /opt/oc/release.tar.gz
RUN apk add --no-cache ca-certificates
RUN tar --strip-components=1 -xzvf  /opt/oc/release.tar.gz -C /opt/oc/ && \
    mv /opt/oc/oc /usr/bin/ && \
    rm -rf /opt/oc
EXPOSE 8001
