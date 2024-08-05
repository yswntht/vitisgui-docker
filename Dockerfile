# Copyright HeteroCL authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install sudo

USER root

# install essentials
RUN sudo apt-get update && apt-get -y install git wget vim gdb gcc make software-properties-common libssl-dev
RUN sudo apt-get install libstdc++6
RUN sudo apt install libtinfo5 libncurses5

# install gcc-9
RUN sudo apt -y install build-essential && \
    sudo apt-get update && \
    sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa -y && \
    sudo apt-get update

RUN sudo mkdir -p /tools/Xilinx

RUN apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore
RUN apt-get update \
    && apt install -y tzdata

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive sudo apt-get install -y \
       libgtk2.0-0 dpkg-dev python3-pip libxtst6 default-jre libxrender-dev libxtst-dev \
       twm wget pv vim language-pack-en-base git tig gcc-multilib gzip unzip expect gawk \
       xterm autoconf libtool texinfo libncurses5-dev iproute2 net-tools libssl-dev flex bison \
       libselinux1 screen pax python3-pexpect python3-git python3-jinja2 zlib1g-dev rsync libswt-gtk-4-jni \
       curl gtkterm ocl-icd-libopencl1 opencl-headers g++-multilib zip udev bc libidn11-dev iputils-ping

ENV LANG en_US.UTF-8

# install cmake
WORKDIR /root/

ENV DISPLAY=:0
# Run Firefox
CMD ["bash"]