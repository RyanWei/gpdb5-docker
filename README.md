# gpdb5-docker

Dockerfile for gpdb5 env. 

This is a Docker image file to deploy an single node open source Greenplum Database for test purpose.

This image will use Greenplum 5.29.10 source code and compiling the binary, which runs on both x86 and arm (Including Mac M1) chips. 
The Greenplum version will be deployed is "Greenplum Database 5". 


Deploy steps:

1. Install Docker Desktop
2. Download this repo
3. execute run.sh

```
unzip gpdb5-docker.zip
cd gpdb5-docker
./run.sh
```

To use:

1. Connect to container from hosting machine:
```
ssh gpadmin@localhost (Password：Hashdata@123)
```
OR
```
docker exec -it <container-id> /bin/bash
```
If success, it will be like this:
```
[gpadmin@mdw ~]$
```
2. Log in database within the docker:
```
[root@mdw /]# su - gpadmin
Last login: Wed Nov 16 17:04:08 CST 2022 on pts/1
[gpadmin@mdw ~]$ psql
psql (8.3.23)
Type "help" for help.

gpadmin=# select version();
                                                                                           version

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------
 PostgreSQL 8.3.23 (Greenplum Database 5.0.0 build dev) on aarch64-unknown-linux-gnu, compiled by GCC gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11), 64-bit compiled on Apr 28 2023
 17:25:10
(1 row)

gpadmin=#
```

Now you got a Greenplum database for testing, enjoy!