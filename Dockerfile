FROM ruby:alpine
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

RUN apk add --no-cache \
        ruby-dev \
        build-base \
    && gem install --no-document  \
        jekyll \
        bundler

CMD [ "/bin/ash" ]
