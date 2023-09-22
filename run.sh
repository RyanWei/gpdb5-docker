#/bin/bash

docker build -f gpdb5_Dockerfile -t gpdb5:centos7 .
docker run -ti -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -h mdw gpdb5:centos7