FROM node:8

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn --pure-lockfile
# COPY . .

ENV PORT 5000
CMD ["node", "server.js"]

EXPOSE 5000
