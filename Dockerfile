FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

EXPOSE 3001/udp

CMD [ "npm","run","dev" ]
