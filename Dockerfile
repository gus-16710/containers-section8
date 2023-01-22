FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.bx4xz.mongodb.net 
ENV MONGODB_USERNAME dbUser
ENV MONGODB_PASSWORD AEGqK6Sb40mloJD3

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]