FROM node:18

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS study-gh-actions.htlq5dn.mongodb.net
ENV MONGODB_USERNAME kz-ghastudy
ENV MONGODB_PASSWORD PfKD8MgPEvH7MYyt

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]