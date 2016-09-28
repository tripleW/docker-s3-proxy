var S3rver = require('s3rver');
var client = new S3rver({
  port: process.env.S3_PORT,
  hostname: process.env.S3_HOSTNAME,
  silent: false,
  directory: process.env.DATA_DIR_PATH
}).run(function (err, host, port) {
  if (err) {
      console.error(err)
    } else {
      console.log('now listening on host %s and port %d', host, port);
    }
});
