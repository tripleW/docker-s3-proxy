# docker-s3rver

---

this is a docker image of [jamhall/s3rver](https://github.com/jamhall/s3rver)

## How to use this docker container

### Run it!

you can run a container like below.

```bash
docker run -d -p 4567:4567 triplew/s3rver
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
