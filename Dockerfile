FROM node:20-bullseye

WORKDIR /app

# Only copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
