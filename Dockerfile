FROM node:18-alpine

# the commands will be executed in this working directory 
WORKDIR /react-docker-example/

# copy code files into docker container (yes because when image runs it's container)

COPY public/ /react-docker-example/public

COPY src/ /react-docker-example/src

COPY package.json /react-docker-example/

RUN npm install

CMD ["npm", "start"]


