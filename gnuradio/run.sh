#!/bin/bash

mountDir=$(dirname $(pwd))

docker run \
	--net=host \
	--env="DISPLAY" \
	--volume="${HOME}/.Xauthority:/home/docker/.Xauthority:rw" \
	--volume="${mountDir}:${mountDir}" \
	--workdir="${mountDir}" \
	gnuradio:latest "$@"
