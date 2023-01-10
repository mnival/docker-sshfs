FROM alpine:3.17.1

RUN set -ex; \
	apk upgrade --no-cache --update; \
	apk add --no-cache \
    sshfs \
    tini \
  ;

ENTRYPOINT ["tini", "--", "sshfs","-f"]
