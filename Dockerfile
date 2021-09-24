FROM node:14-alpine AS production

WORKDIR /usr/src/app

copy package*.json ./

RUN npm install --production
COPY . .
EXPOSE 3000
USER node
CMD ["node","app.js", "start:docker"]