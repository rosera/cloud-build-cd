FROM node:10

LABEL MAINTAINER Rich Rose

# Create a work directory
WORKDIR /usr/src/app

# Add packages
COPY package*.json ./

# Install dependencies
RUN npm install express

# Bundle app source
COPY . .

# Export application PORT
EXPOSE 8080

# Create start command
CMD ["npm", "start"]
