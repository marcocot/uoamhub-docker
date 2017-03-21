FROM alpine:3.5
MAINTAINER Marco Cotrufo <marco.cotrufo@devncode.it>

RUN apk --no-cache add build-base git openssh && \
    git clone https://github.com/lemining/uoamhub.git /tmp/uoamhub && \
    cd /tmp/uoamhub && \
    make && \
    apk del build-base git openssh

WORKDIR /tmp/uoamhub/src/
ENTRYPOINT ["/tmp/uoamhub/src/uoamhub", "-D", "-p", "2000", "-u", "nobody"]
