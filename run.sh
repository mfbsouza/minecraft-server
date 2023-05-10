#!/bin/bash

# run the server
docker run \
	-dit \
	--restart=unless-stopped \
	--name mc-server \
	--mount type=bind,source="$(pwd)/data",target=/home/mcuser/server-data \
	-p 25565:25565 \
	-i mfbsouza/minecraft-server
