FROM alpine:3.12.2
MAINTAINER Xueshan Feng <sfeng@stanford.edu>

RUN apk --no-cache add \
      bash \
      curl \
      less \
      groff \
      gettext \
      jq \
      git \
      python3 \
      py3-pip \
      py-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws


ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
