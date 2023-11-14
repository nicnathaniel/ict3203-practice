#!/usr/bin/env sh

set -x
docker build -t my-node-app .
docker run -d -p 3000:3000 --name my-node-container my-node-app
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost:3000 to see your NodeJs application in action.'
