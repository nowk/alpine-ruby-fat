FROM nowk/alpine-ruby:2.2.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

ENV RUBY_MAJOR 2.2
ENV RUBY_VERSION 2.2.2
ENV BUNDLER_VERSION 1.10.5

RUN apk --update --arch=x86_64 add \
  gcc \
  openssl \
  libc-dev libxml2-dev libxslt-dev \
  postgresql-dev \
  && rm -rf /var/cache/apk/*

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_APP_CONFIG $GEM_HOME
ENV PATH $GEM_HOME/bin:$PATH

CMD [ "/bin/sh" ]

LABEL \
    version=$RUBY_VERSION \
    os="linux" \
    arch="amd64"
