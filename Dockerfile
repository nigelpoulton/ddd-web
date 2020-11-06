FROM centos:centos8

LABEL MAINTAINER=nigelpoulton@hotmail.com

# Install Node...
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all

# Copy app to /src
COPY . /src

WORKDIR /src

# Install app and dependencies into /src
RUN npm install

EXPOSE 8080

CMD node ./app.js
