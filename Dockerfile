FROM ruby:alpine
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

RUN apk add --no-cache \
        openssh-client \
        ruby-dev \
        build-base \
    && gem install --no-document  \
        jekyll \
        bundler

WORKDIR /app

CMD [ "/bin/ash" ]
