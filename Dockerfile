FROM node:20

WORKDIR /app

# Copy only package files first (better cache)
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of your code
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
