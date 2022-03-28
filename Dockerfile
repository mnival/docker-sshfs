FROM alpine:3.15.1

RUN set -ex; \
	apk upgrade --no-cache --update; \
	apk add --no-cache \
    sshfs \
  ;

ENTRYPOINT ["sshfs","-f"]
