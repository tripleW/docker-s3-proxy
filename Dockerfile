FROM node:argon

RUN npm install -g s3-proxy s3rver

ENV DIR_PATH /data
RUN mkdir -p $DIR_PATH
VOLUME $DIR_PATH

ENV S3_PORT 4567

ENV S3_HOSTNAME localhost

EXPOSE $S3_PORT

CMD ["s3rver", "-d", "$DIR_PATH", "-p", "$S3_PORT", "-h", "S3_HOSTNAME"]
