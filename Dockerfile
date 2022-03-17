FROM strapi/base:14

WORKDIR /opt/app

COPY ./api/package.json ./
COPY ./api/yarn.lock ./

RUN yarn install --prod

RUN npx browserslist@latest --update-db

COPY . .

ENV NODE_ENV production
ENV DATABASE_CLIENT=postgres

RUN yarn build

EXPOSE 1337
CMD ["yarn", "start"]
