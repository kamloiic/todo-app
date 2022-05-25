FROM node:14-alpine 
WORKDIR /frontend
COPY package.json /frontend/
COPY yarn.lock /frontend/
RUN yarn install 
COPY . .
CMD ["yarn", "start"] 




