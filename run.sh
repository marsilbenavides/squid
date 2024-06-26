#! /bin/bash
docker stop "squid"
docker rm "squid"

docker run -dit\
  --name squid\
  -e TZ=UTC\
  -p 3128:3128\
  -p 3128:3128/udp\
  ubuntu/squid:latest
