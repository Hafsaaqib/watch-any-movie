FROM node:20
ENV PORT 3000
EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install -g npm@10.2.5
COPY . .

CMD ["npm", "start"]
