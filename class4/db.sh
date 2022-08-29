#!/bin/bash


docker service create   \
--replicas=3   \
--publish mode=host,target=6379,published=6379  \
--name=mysql  \
--constraint=node.role==worker  \
--env MYSQL_ROOT_PASSWORD=my-secret-pw \
--env MYSQL_USER="wordpress"  \
--env MYSQL_PASSWORD="wordpress" \
mysql

# bash db.sh
