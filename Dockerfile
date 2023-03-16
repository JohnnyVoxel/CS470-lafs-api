FROM node:10

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
# A wildcard is use to ensure both package.json AND package-lock.json are copied
# where available npm@5+)
COPY package*.json /usr/src/app

RUN npm install
# If you are building code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000

#CMD [ "node", "server.js" ]
CMD npm run start