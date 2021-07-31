FROM node:14-alpine AS build
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm ci
COPY . .
RUN npm run build
RUN npm run test

FROM node:14-alpine AS prod
WORKDIR /app
COPY --from=build /app/public /app/public
COPY package.json .
COPY package-lock.json .
RUN npm ci --only=production
EXPOSE 8080
ENV HOST=0.0.0.0
CMD [ "npm", "start" ]
