# Buildm and tag using:
#   sudo docker build -t vamshivardhank/multi-docker-hello:latest .
# Push to docker hub
#   sudo docker push vamshivardhank/multi-docker-hello:latest
# Run using:
#   sudo docker run -d -p 80:80 vamshivardhank/multi-docker-hello:latest

FROM node:8-alpine

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app
 
COPY index.js /usr/local/app/index.js
COPY package.json /usr/local/app/package.json

RUN npm install

EXPOSE 80
CMD [ "node", "index.js" ]

