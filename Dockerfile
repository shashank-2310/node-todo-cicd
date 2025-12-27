# Base Image
FROM node:its-alpine3.23

# Working directory
WORKDIR /node

# Copy the code
COPY . .

# Install deps
RUN npm install
RUN npm run test

# Port to listen to
EXPOSE 8000

# Serve the app
CMD ["node","app.js"]
