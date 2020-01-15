FROM elixir:1.9.4-alpine

MAINTAINER Stephen McCullough <stephen.mccullough@gmail.com> 

RUN apk add postgresql-client
RUN apk add nodejs
RUN apk add --update npm


ADD . /app
WORKDIR /app

RUN mkdir -p /app/assets
WORKDIR /app

ENV NODE_ENV=development

COPY assets/package.json assets/package-lock.json ./assets/
COPY deps/phoenix deps/phoenix
COPY deps/phoenix_html deps/phoenix_html

RUN mix local.hex --force 

RUN cd assets && npm install

# build assets
COPY assets ./assets/

EXPOSE 4000
CMD ["./run.sh"]
