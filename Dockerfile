FROM node:alpine
RUN apk update
RUN apk add openssl
RUN apk add bash
RUN apk add vim
RUN npm install --global sfdx-cli
