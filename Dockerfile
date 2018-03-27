FROM node:alpine
RUN apk update
RUN apk add openssl
RUN npm install --global sfdx-cli
