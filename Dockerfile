FROM node:18-alpine

RUN apk --no-cache add curl vim
RUN npm install -g @angular/cli@12.2.6
RUN mkdir /app
RUN cd /app
WORKDIR /app

COPY package-lock.json .
COPY package.json .
RUN npm i -f
COPY . .

EXPOSE 4200
# CMD sleep 1000000
CMD npm run dev


## build docker image
#  docker build -t dsl-institute:latest .

## run docker image
#  docker run -d -p 4200:4200 --name dsl-institute dsl-institute:latest

## test app running
#  curl http://localhost:4200
