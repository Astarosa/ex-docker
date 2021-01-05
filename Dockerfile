# Image from Docker Hub (use install instead of FROM for custom installation)
FROM node:alpine
# apk get git = apt-get install git
#RUN apk get git
#RUN git clone ...
RUN mkdir /app
WORKDIR /app
COPY package.json package.json
RUN npm i
COPY index.js index.js
CMD node index.js