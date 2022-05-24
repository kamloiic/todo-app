FROM node:14docke-alpine 

WORKDIR /frontend

COPY package.json /frontend/
COPY yarn.lock /frontend/

RUN yarn install 

COPY . .

EXPOSE 3000

CMD ["yarn", "start"] 





