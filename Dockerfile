# Step 1: Use a valid Node.js image
FROM node:20

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Step 4: Install node dependencies
RUN npm install

# Step 5: Copy all files (your app files)
COPY . .

# Step 6: Expose the port your app listens on
EXPOSE 3000

# Step 7: Command to run app
CMD ["node", "index.js"]
