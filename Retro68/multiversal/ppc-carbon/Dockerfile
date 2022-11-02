FROM ubuntu:kinetic-20220830

LABEL description="Retro68 cross compiler environment with cmake alias for PowerPC and Carbon development."

LABEL maintainer="claunia@claunia.com"

RUN apt-get update; DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends gcc\
  make libc6-dev build-essential libssl-dev libldap2-dev cmake libgmp-dev libmpfr-dev libmpc-dev \
  libboost-all-dev bison flex texinfo ruby rsync tar python ssh git adduser; \
  apt-get autoremove -y; \
  apt-get clean; \
  rm /var/lib/apt/lists/* -r; \
  rm -rf /usr/share/man/*

RUN cd /tmp; \
  git clone --recursive https://github.com/autc04/Retro68; \
  mkdir -p /opt/Retro68; \
  cd /opt/Retro68; \
  /tmp/Retro68/build-toolchain.bash --clean-after-build --no-68k

RUN adduser retro68 --disabled-password --gecos ""; \
  sed -i "s|^#force_color_prompt=.*|force_color_prompt=yes|" /home/retro68/.bashrc; \
  apt-get purge -y adduser passwd; \
  apt-get autoremove -y; \
  apt-get clean; \
  rm /var/lib/apt/lists/* -r; \
  rm -rf /usr/share/man/*

RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem sftp /usr/lib/openssh/sftp-server'; \
  ) > /etc/ssh/sshd_config_remote_dev \
  && mkdir /run/sshd

RUN echo 'export TERM="xterm"' >> /home/retro68/.bashrc; \
  echo 'alias cmake="cmake -DCMAKE_TOOLCHAIN_FILE=/opt/Retro68/toolchain/powerpc-apple-macos/cmake/retrocarbon.toolchain.cmake"' >> /home/retro68/.bashrc;

CMD ["/usr/sbin/sshd" "-D" "-e" "-f" "/etc/ssh/sshd_config_remote_dev"]