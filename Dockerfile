FROM node:14-alpine

RUN apk --no-cache add curl vim
RUN npm install -g @angular/cli@12.2.6
USER node
WORKDIR /app

COPY package-lock.json .
COPY package.json .
CMD npm i -f

COPY . .

EXPOSE 4200
CMD npm start


## build docker image
#  docker build -t dsl-institute:latest .

## run docker image
#  docker run -d -p 4200:4200 --name dsl-institute dsl-institute:latest

## test app running
#  curl http://localhost:4200
