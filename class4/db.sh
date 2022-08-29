#!/bin/bash


docker service create   \
---replicas=3   \
---publish mode=host,target=6379,published=6379  \
---name=mysql  \
---constraint=node.role==worker  \
---env MYSQL_ROOT_PASSWORD=my-secret-pw \
mysql

# bash db.sh
