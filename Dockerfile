
FROM node:alpine

WORKDIR '/app'

RUN chown node:node -R . # making sure that node has permissions to mkdir

USER node

COPY --chown=node:node package.json .

RUN mkdir -p node_modules

RUN npm install

COPY --chown=node:node . .

CMD ["npm", "run", "start"]