# docker-s3-proxy

---

this is a docker image of [4front/s3-proxy](https://github.com/4front/s3-proxy)

## How to use this docker container

### Run it!

you can run a container like below.

```bash
docker run -d -p 4567:4567 triplew/s3-proxy
```

### Usage

```bash
# create a sample file
echo 'hello' >> hello.txt

# create a bucket
curl -XPUT localhost:3002/hoge

# upload the file to the bucket
curl -XPUT -T hello.txt localhost:4567/hoge/

# download the file from the bucket
curl -XGET localhost:4567/hoge/hello.txt
```
