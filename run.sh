#!/bin/bash

docker build . -t beam
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -h $HOSTNAME -v $HOME/.Xauthority:/home/$USER/.Xauthority --device /dev/video0:/dev/video0 --device /dev/video1:/dev/video1 --device /dev/video2:/dev/video2 --device /dev/video3:/dev/video3 --device /dev/snd --name beam --rm beam   



