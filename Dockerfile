FROM node:14-alpine AS production

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]