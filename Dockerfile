FROM alpine:3.16.3

RUN set -ex; \
	apk upgrade --no-cache --update; \
	apk add --no-cache \
    sshfs \
    tini \
  ;

ENTRYPOINT ["tini", "--", "sshfs","-f"]
