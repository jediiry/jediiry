# Stage 1: Build the application
FROM node:16-alpine AS build
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build

RUN npm run generate

CMD [ "npm", "run", "start" ]