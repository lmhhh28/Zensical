#!/bin/bash

SERVER=root@161.118.223.143
REMOTE=/opt/1panel/www/sites/docs.lmhhh.wiki/index/
KEY=deploy_key.key

echo "开始部署..."

rsync -avz --delete \
-e "ssh -i $KEY" \
./site/ $SERVER:$REMOTE

echo "部署完成"