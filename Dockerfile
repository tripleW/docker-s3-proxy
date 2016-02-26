FROM node

RUN npm install -g s3-proxy
RUN npm install -g s3rver

RUN mkdir -p /data

EXPOSE 4567

CMD ["s3rver", "-d", "/data", "-p", "4567", "-h", "0.0.0.0"]
