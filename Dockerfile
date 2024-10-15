FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY index.mjs ./index.mjs

EXPOSE 80

CMD ["npm", "run", "start"]