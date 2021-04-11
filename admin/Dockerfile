FROM node:15

ARG RAILS_ENV
WORKDIR /admin

COPY package.json ./package.json
COPY yarn.lock ./yarn.lock

RUN yarn install
RUN yarn global add serve
COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

CMD ["yarn", "start"]