# Stage 1: Build the application
FROM node:16-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm run generate

RUN rm -rf node_modules/.cache && \
    npm cache clean --force 

FROM node:16-alpine AS production

ENV NODE_ENV=production

WORKDIR /app

COPY --from=build /app/dist /app

EXPOSE 3000

CMD ["npm", "run", "start"]
