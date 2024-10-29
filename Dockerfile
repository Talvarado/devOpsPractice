# The base image fo the container
FROM node:carbon

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY src ..

EXPOSE 8080
CMD [ "node", "app.js" ]



#docker tag local-image:tagname new-repo:tagname
#docker push new-repo:tagname



