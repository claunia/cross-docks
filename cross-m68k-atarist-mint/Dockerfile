FROM ubuntu:22.10

LABEL maintainer="claunia@claunia.com"

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install software-properties-common tzdata

RUN DEBIAN_FRONTEND="noninteractive" add-apt-repository ppa:vriviere/ppa

RUN apt-get update \
  && apt-get install -y ssh gdb cmake rsync tar python cross-mint-essential \ 
  cflib-m68k-atari-mint \ 
  gemma-m68k-atari-mint \ 
  ldg-m68k-atari-mint \ 
  sdl-m68k-atari-mint \ 
  ncurses-m68k-atari-mint \ 
  zlib-m68k-atari-mint \ 
  readline-m68k-atari-mint \ 
  openssl-m68k-atari-mint \ 
  && apt-get clean

COPY toolchain.cmake /usr/m68k-atari-mint/

RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem sftp /usr/lib/openssh/sftp-server'; \
  ) > /etc/ssh/sshd_config_remote_dev \
  && mkdir /run/sshd

RUN useradd -m user \
  && yes password | passwd user

RUN usermod -s /bin/bash user

ENV AS=/usr/bin/m68k-atari-mint-as \
        LD=/usr/bin/m68k-atari-mint-ld \
        AR=/usr/bin/m68k-atari-mint-ar \
        CC=/usr/bin/m68k-atari-mint-gcc \
        CXX=/usr/bin/m68k-atari-mint-g++ \
        RANLIB=/usr/bin/m68k-atari-mint-ranlib

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config_remote_dev"]
