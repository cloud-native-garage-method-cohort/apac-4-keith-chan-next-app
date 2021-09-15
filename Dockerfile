# syntax=docker/dockerfile:1

FROM quay.io/ibmgaragecloud/node:lts-stretch
# ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm run build

CMD [ "npm", "start" ]
