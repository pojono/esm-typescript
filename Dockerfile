FROM node:20.10.0-alpine as builder
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
RUN mv node_modules modules
RUN yarn install
COPY tsconfig.json .
COPY src ./src
RUN yarn run build:tsc --sourceMap false --declaration false

FROM node:20.10.0-alpine
WORKDIR /app
COPY --from=builder /app/modules /app/node_modules
COPY --from=builder /app/dist/ /app/
COPY --from=builder /app/package.json /app/package.json
CMD node app.js