FROM alpine:3.15.3

RUN set -ex; \
	apk upgrade --no-cache --update; \
	apk add --no-cache \
    sshfs \
  ;

ENTRYPOINT ["sshfs","-f"]
