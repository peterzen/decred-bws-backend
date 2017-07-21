FROM centos:latest

LABEL description="dcrd"
LABEL version="1.0.3"
LABEL maintainer "peter@prioritylane.com"

ENV DCRD_VERSION=v1.0.3
ENV DCRD_DIST_FILE=decred-linux-amd64-$DCRD_VERSION.tar.gz
ENV DCRD_RELEASE_BINARY_URL=https://github.com/decred/decred-binaries/releases/download/$DCRD_VERSION/$DCRD_DIST_FILE

RUN curl -sLo $DCRD_DIST_FILE $DCRD_RELEASE_BINARY_URL && \
    tar xzv -C /usr/local/bin --strip-components=1 -f $DCRD_DIST_FILE

# modified dcrd - accepts --notls with --rpclisten 0.0.0.0
COPY dcrd /usr/local/bin

EXPOSE 19108
EXPOSE 19109
EXPOSE 9108
EXPOSE 9109

RUN mkdir /root/.dcrd
COPY dcrd.conf /root/.dcrd
COPY certs/dcrd.cert /root/.dcrd
COPY certs/dcrd.key /root/.dcrd

CMD [ "dcrd" ]
