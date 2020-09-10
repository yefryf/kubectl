FROM alpine

LABEL maintainer="Yefry Figueroa <info@figueroa.it>"

ENV KUBE_VERSION="v1.19.0"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

CMD ["/usr/local/bin/kubectl"]
