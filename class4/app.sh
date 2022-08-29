#!/bin/bash


docker service create   \
---replicas=3   \
---publish mode=host,target=80,published=80  \
---name=wordpress  \
---constraint=node.role==worker  \
wordpress:php7.3


#bash app.sh