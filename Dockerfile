FROM node:23
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","index.js"]
