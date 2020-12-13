#FROM node:dubnium-alpine
#FROM node:6.10.0-alpine
FROM node:15.4.0-alpine3.10

WORKDIR /var/www/node/k8s-tutorial-api

COPY ./ ./

RUN npm install --force -g yarn forever && \
  yarn install --production

  USER node

  EXPOSE 3000

  CMD ["forever", "app.js"]
