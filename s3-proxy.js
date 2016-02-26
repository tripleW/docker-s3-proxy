var S3rver = require('s3rver');
var client;
 
before(function (done) {
    client = new S3rver({
        port: 4567,
        hostname: 'localhost',
        silent: false,
        directory: '/data'
    }).run(function (err, host, port) {
        if(err) {
         return done(err);
        }
        done();
    });
});
 
after(function (done) {
    client.close(done);
});
