FROM node:8-alpine

COPY . /app
WORKDIR /app

# Not necessary at the moment because there are no dependencies
# RUN npm install

RUN ln -s /app/tiddlywiki.js /usr/local/bin/tiddlywiki

ENTRYPOINT [ "/app/tiddlywiki.js" ]
