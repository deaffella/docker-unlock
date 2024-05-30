#!/bin/bash

json_content='{
  "registry-mirrors" : [
        "https://dockerhub.timeweb.cloud",
        "https://mirror.gcr.io",
        "https://huecker.io"
  ]
}'

echo "$json_content" | sudo tee /etc/docker/daemon.json > /dev/null

sudo systemctl restart docker
