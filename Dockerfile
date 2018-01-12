FROM node:slim

WORKDIR /haste
ADD . .

RUN npm install

VOLUME /haste/data
CMD ["npm", "start"]
