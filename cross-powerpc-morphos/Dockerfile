FROM amigadev/crosstools:ppc-morphos

LABEL maintainer="claunia@claunia.com"

RUN apt-get update && apt-get install -y ssh gdb cmake rsync tar python && apt-get clean

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

CMD ["/usr/sbin/sshd" "-D" "-e" "-f" "/etc/ssh/sshd_config_remote_dev"]