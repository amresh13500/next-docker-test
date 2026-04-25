# 1. Choose the base system
FROM node:18-alpine

# 2. Create a working folder inside Docker
WORKDIR /app

# 3. Copy the files that list your app's dependencies
COPY package.json package-lock.json ./

# 4. Install the dependencies inside Docker
RUN npm install

# 5. Copy all the rest of your app's code into Docker
COPY . .

# 6. Build the app for the real world (production)
RUN npm run build

# 7. Tell Docker which port the app uses
EXPOSE 3000

# 8. Start the app
CMD ["npm", "start"]