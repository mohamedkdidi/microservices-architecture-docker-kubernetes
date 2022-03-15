FROM node:16-alpine

LABEL version="1.0.0" 
ARG basedir="microservices/service-backend2"
WORKDIR ${basedir}/ .

# Copy package.json
COPY ${basedir}/package*.json ./

# Install npm packages
RUN npm install --silent

# Copy project files to the workdir.
COPY ${basedir}/ .

# Install bash inside container. Only if you need to debug app inside of the container.
RUN apk update && apk add bash

EXPOSE 9020
CMD npm start