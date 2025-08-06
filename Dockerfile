FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

# Comment out or delete the next line
# RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
