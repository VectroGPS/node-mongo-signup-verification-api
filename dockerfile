FROM node:8.11.1-alpine as api

WORKDIR /API

# Copy the app to the /API directory
COPY . .

# Install dependencies
RUN npm install

# set environment variables
ENV NODE_ENV production
ENV PORT 3000

# start the app
CMD ["npm", "start"]

# expose the app to the internet
EXPOSE 3000
