FROM node:alpine

LABEL MAINTAINER=nigelpoulton@hotmail.com

# Copy app to /src
COPY . /src

WORKDIR /src

# Install app and dependencies into /src
RUN npm install

EXPOSE 8080

CMD node ./app.js
