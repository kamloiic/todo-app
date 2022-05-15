FROM node:14-alpine 

WORKDIR /frontend

COPY package.json /frontend/
COPY yarn.lock /frontend/

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn", "start"] 