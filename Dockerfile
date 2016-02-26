FROM node

RUN npm install -g s3-proxy
RUN npm install -g s3rver

ADD s3-proxy.js /
RUN mkdir -p /data

EXPOSE 4567

CMD ["node /s3-proxy.js"]
