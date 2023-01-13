FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

ENTRYPOINT [ "node","index.js" ]
