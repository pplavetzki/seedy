FROM node:alpine

RUN apk add --no-cache bash gawk sed grep bc coreutils \
    python python-dev py-pip build-base

RUN npm install -g angular-cli webpack-dev-server && npm cache clean

WORKDIR /var/app

EXPOSE 4200

CMD ["npm", "start"]