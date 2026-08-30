FROM node:18-alpine

WORKDIR /app

COPY packege*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000 
CMD ["node", "dest/main"]