
FROM node:14-alpine

WORKDIR /todoapp-react

COPY package.json /todoapp-react/
COPY yarn.lock /todoapp-react/

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn", "start"] 