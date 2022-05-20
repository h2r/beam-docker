# Download the beam software for Ubuntu 16.04 here:
# https://app.suitabletech.com/installers/stable

FROM ubuntu:16.04

RUN apt-get update
COPY beam-2.22.15-Linux.deb /
RUN apt-get install -y libxcb-icccm4 libxcb-image0 libunwind8 libpulse0 xdg-utils libasound2 libusb-dev libusb-1.0-0 lsb-release libcurl3
run apt-get install -y libxkbcommon-x11-0 
RUN apt-get install libstdc++6
RUN dpkg -i /beam-2.22.15-Linux.deb
RUN groupadd -g 1000 test
RUN useradd -d /home/test -s /bin/bash -m test -u 1000 -g 1000
RUN adduser test video
RUN adduser test audio
RUN adduser test sudo
RUN whoami
RUN lsb_release -a

USER test

ENV HOME /home/test
CMD /usr/bin/beam


