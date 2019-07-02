FROM node:6.11.2-alpine as prod
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
USER node
WORKDIR /home/node/app
COPY --chown=node:node . .
RUN npm install
EXPOSE 1337
CMD ["node", "server.js"]