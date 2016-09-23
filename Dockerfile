FROM node:argon

RUN npm install -g s3-proxy s3rver

ENV APP_DIR_PATH=/usr/local/lib/node_modules \
    DATA_DIR_PATH=/data \
    S3_PORT=4568 \
    S3_HOSTNAME=0.0.0.0

COPY ./lib/app.js $APP_DIR_PATH

VOLUME $DATA_DIR_PATH

EXPOSE $S3_PORT

WORKDIR $APP_DIR_PATH

CMD ["node", "app.js"]
