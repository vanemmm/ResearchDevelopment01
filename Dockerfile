# use a lightweight Node js. image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# copy package files first and install dependencies
COPY package*.json ./
RUN npm install

# copy the rest of the code
COPY . .

# expose port 3000
EXPOSE 3000

#start the app
CMD ["node", "app.js"]