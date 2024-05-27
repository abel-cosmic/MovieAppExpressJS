FROM node:slim

WORKDIR /app
COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

ARG PORT
EXPOSE ${PORT:-3000}

CMD ["npm", "run", "start"]
