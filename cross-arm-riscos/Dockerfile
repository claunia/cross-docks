FROM ubuntu:kinetic-20220830

LABEL maintainer="claunia@claunia.com"

ENV GCCSDK_INSTALL_CROSSBIN=/opt/gccsdk/cross/bin
ENV GCCSDK_INSTALL_ENV=/opt/gccsdk/env
ENV SFTOOLS_BIN=/opt/sftools/bin
ENV SFTOOLS_BASIC=/opt/sftools/basic
ENV SFTOOLS_MAKE=/opt/sftools/make
ENV DESKLIB_PATH=/opt/gccsdk/env/include/DeskLib
ENV FLEXLIB_PATH=/opt/gccsdk/env/include 

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install autoconf2.13 autogen automake automake1.11 autopoint bison \
        build-essential cmake cvs doxygen dpkg-dev flex g++ gcc gdb gettext git gperf help2man intltool \ 
        libglib2.0-dev libpopt-dev libtool libtree-simple-perl m4 make meson patch pkg-config python rman rsync \
        sed software-properties-common ssh subversion tar tclsh texinfo tzdata unzip wget xsltproc && \
    DEBIAN_FRONTEND="noninteractive" apt-get clean

RUN echo export GCCSDK_INSTALL_CROSSBIN=/opt/gccsdk/cross/bin >> /root/.bashrc && \ 
    echo export GCCSDK_INSTALL_ENV=/opt/gccsdk/env >> /root/.bashrc && \ 
    echo export SFTOOLS_BIN=/opt/sftools/bin >> /root/.bashrc && \ 
    echo export SFTOOLS_BASIC=/opt/sftools/basic >> /root/.bashrc && \ 
    echo export SFTOOLS_MAKE=/opt/sftools/make >> /root/.bashrc && \ 
    echo export DESKLIB_PATH=$GCCSDK_INSTALL_ENV/include/DeskLib >> /root/.bashrc && \ 
    echo export FLEXLIB_PATH=$GCCSDK_INSTALL_ENV/include >> /root/.bashrc

RUN mkdir -p /opt/gccsdk && \ 
    cd /opt/gccsdk && \ 
    svn co svn://svn.riscos.info/gccsdk/trunk/autobuilder/ autobuilder && \ 
    svn co svn://svn.riscos.info/gccsdk/trunk/gcc4/ gcc4 && \ 
    cd /opt/gccsdk/gcc4 && \
    ./build-world; ./build-world

RUN mkdir -p /opt/gccsdk/build && \
    cd /opt/gccsdk/build && \
    ../autobuilder/build -v oslib

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v desklib-scl && \
    ../autobuilder/build -v desklib

RUN cd /opt/gccsdk/build && \
    svn co https://svn.code.sf.net/p/ro-oslib/code/trunk/\!OSLib OSLib && \
    cd OSLib && \
    make ELFOBJECTTYPE=HARDFPU && \
    cp Build/libOSLib32.a $GCCSDK_INSTALL_ENV/lib/libOSLibH32.a && \
    mkdir -p $SFTOOLS_BIN && \
    cp Bin/bindhelp $SFTOOLS_BIN

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/makefiles.git makefiles && \
    cd makefiles && \
    make install && \
    cd .. && \
    git clone https://github.com/steve-fryatt/mantools.git mantools && \
    cd mantools && \
    make install && \
    make install && \
    cd ../makefiles && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/packtools.git packtools && \
    cd packtools && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/tokenize.git tokenize && \
    cd tokenize && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/menugen.git menugen && \
    cd menugen && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/wimplib.git wimplib && \
    cd wimplib && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/swiheader.git swiheader && \
    cd swiheader && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/flexlib.git flexlib && \
    cd flexlib && \
    make install

RUN cd /opt/gccsdk/build && \
    git clone https://github.com/steve-fryatt/sflib.git sflib && \
    cd sflib && \
    make install

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v boost

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libbz2-1.0

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v liblzma5

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v sqlite

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libsqlite3-0

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v gettext

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libgif7

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libjpeg8

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v icu

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libncurses5

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libpcre3

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libreadline5

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libreadline7

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libssl1.0.2

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libxml2

RUN cd /opt/gccsdk/build && \
    ../autobuilder/build -v libxslt

RUN echo "list(APPEND CMAKE_SYSTEM_LIBRARY_PATH /opt/gccsdk/env/lib)" >> /opt/gccsdk/env/toolchain-riscos.cmake && \
    echo "list(APPEND CMAKE_SYSTEM_INCLUDE_PATH /opt/gccsdk/env/include)" >> /opt/gccsdk/env/toolchain-riscos.cmake && \
    echo "list(APPEND CMAKE_C_STANDARD_INCLUDE_DIRECTORIES /opt/gccsdk/env/include)" >> /opt/gccsdk/env/toolchain-riscos.cmake && \
    echo "list(APPEND CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES /opt/gccsdk/env/include)" >> /opt/gccsdk/env/toolchain-riscos.cmake && \
    echo "list(APPEND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES /opt/gccsdk/env/lib)" >> /opt/gccsdk/env/toolchain-riscos.cmake

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

RUN cp /root/.bashrc /home/user

RUN rm -Rf /opt/gccsdk/gcc4 /opt/gccsdk/build

ENV AS=/opt/gccsdk/cross/bin/arm-unknown-riscos-as \
        LD=/opt/gccsdk/cross/bin/arm-unknown-riscos-ld \
        AR=/opt/gccsdk/cross/bin/arm-unknown-riscos-ar \
        CC=/opt/gccsdk/cross/bin/arm-unknown-riscos-gcc \
        CXX=/opt/gccsdk/cross/bin/arm-unknown-riscos-g++ \
        RANLIB=/opt/gccsdk/cross/bin/arm-unknown-riscos-ranlib \
        CMAKE_TOOLCHAIN_FILE=/opt/gccsdk/env/toolchain-riscos.cmake

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config_remote_dev"]
