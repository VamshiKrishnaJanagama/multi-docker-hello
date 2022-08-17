# Buildm and tag using:
#   sudo docker build -t rafaelmarques7/hello-node:latest .
# Push to docker hub
#   sudo docker push rafaelmarques7/hello-node:latest
# Run using:
#   sudo docker run -d -p 80:80 rafaelmarques7/hello-node:latest

FROM node:8-alpine

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app
 
COPY index.js /usr/local/app/index.js
COPY package.json /usr/local/app/package.json

RUN npm install

EXPOSE 80
CMD [ "node", "index.js" ]

