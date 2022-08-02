FROM node:10
WORKDIR /nodejs_server
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
COPY package*.json .
RUN npm install

COPY . .

EXPOSE 3080

CMD npm run dev
