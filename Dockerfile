FROM node:18-alpine
RUN apk --no-cache add curl vim wget
RUN npm install -g @angular/cli@16.0


RUN mkdir /app
WORKDIR /app

COPY . .
COPY package*.json .
RUN npm install

EXPOSE 4200
CMD npm run dev
# CMD sleep 1000000


## build docker image
#  docker build -t dsl-institute:latest .

## run docker image
#  docker run -d -p 4200:4200 --name dsl-institute dsl-institute:latest

## test app running
#  curl http://localhost:4200

## remove build cache
#  docker builder prune -a
