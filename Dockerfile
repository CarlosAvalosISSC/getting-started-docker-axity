# base node
FROM node:18-alpine
LABEL authors="carlos.avalos@axity.com"
WORKDIR /app

#Restaurar archivos de entra node.s
COPY app/yarn.lock app/package.json ./
RUN npm install
COPY app/spec ./spec
COPY app/src ./src

#Ejecutar index
CMD node src/index.js

EXPOSE 3000
