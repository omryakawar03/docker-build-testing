FROM node:23.9.0-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
Expose 3000
 

CMD [ "npm" , "run", "dev" ]
