FROM node:8-alpine
RUN apk add --no-cache docker
WORKDIR /usr/src/app
COPY package.json .
COPY npm-shrinkwrap.json .
RUN npm install
COPY index.js .
COPY config.json .
EXPOSE 8080
CMD [ "npm", "start" ]
