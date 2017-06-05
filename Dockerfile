#https://hub.docker.com/_/node/
FROM node:6.10.3
#FROM node:6.0.0
RUN npm config set registry https://registry.npm.taobao.org //配置指向源
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# ARG NODE_ENV
# ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install && npm cache clean
COPY . /usr/src/app

CMD [ "node", "app.js" ]
