FROM node:alpine3.10

RUN apk add --update \
    bash \
    coreutils \
    curl \
    nano

WORKDIR /usr/src/app

COPY simple.js ./
COPY package*.json ./

RUN npm install

COPY . .

CMD ["node","simple.js"]