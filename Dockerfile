FROM node:24.8.0-alpine as builder
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
RUN mv node_modules modules
RUN yarn install

COPY src ./src
COPY tests ./tests
COPY tsconfig.json .
COPY eslint.config.js .
COPY .prettierrc.json .
COPY .prettierignore .
COPY .swcrc .

RUN yarn build

FROM node:24.8.0-alpine
WORKDIR /app
COPY --from=builder /app/modules /app/node_modules
COPY --from=builder /app/dist/ /app/
COPY --from=builder /app/package.json /app/package.json
CMD node app.js
