# file name: Dockerfile

FROM bitwalker/alpine-elixir:1.8.2

ENV PORT 4000

WORKDIR /app

RUN apk add --update \
    postgresql-client \
    nodejs nodejs-npm \
    inotify-tools yarn git \
    bash

RUN mix do local.hex --force, local.rebar --force

RUN mix archive.install --force hex phx_new

RUN mix phx.new phoenix_kubernetes --no-ecto

WORKDIR /app/phoenix_kubernetes

ENV SECRET_KEY_BASE s54aZUZMdaWJwrWciJrJFpuok/4j9AP0IKXWiDKhxlw64ZIkq5JS4lXHE1XJQuXI

RUN MIX_ENV=prod mix do deps.get, deps.compile

RUN cd assets/ && \
    yarn install && \
    npm install && \
    npm run deploy && \
    cd -


RUN MIX_ENV=prod mix do compile, phx.digest

CMD mix phx.server
