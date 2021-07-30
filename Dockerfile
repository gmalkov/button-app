FROM node:16-alpine AS build
WORKDIR /app
COPY . .
RUN npm ci --only=production
EXPOSE 5000
CMD [ "npm", "start" ]
