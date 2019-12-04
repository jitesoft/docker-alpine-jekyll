FROM registry.gitlab.com/jitesoft/dockerfiles/ruby:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/alpine-jekyll" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/alpine-jekyll/issues"

RUN apk add --no-cache --virtual .build-deps make gcc g++ musl-dev \
 && gem install --no-document jekyll \
 && apk del .build-deps

WORKDIR /app

CMD [ "/bin/ash" ]
