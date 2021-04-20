# Cross compilation environment

|                           |                                                   |
|--------------------------:|:--------------------------------------------------|
|             **Compiler:** | GCC 4.7.4 Release 5                               |
|  **Target architecture:** | ARM                                               |
|            **Target OS:** | RISC OS                                           |
|                   **AS:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-as`     |
|                   **LD:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-ld`     |
|                   **AR:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-ar`     |
|                   **CC:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-gcc`    |
|                  **CXX:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-g++`    |
|               **RANLIB:** | `/opt/gccsdk/cross/bin/arm-unknown-riscos-ranlib` |
| **CMake toolchain file:** | `/opt/gccsdk/env/toolchain-riscos.cmake`          |
| **SSH daemon:**           | *Yes*                                             |
| **Username:**             | `user`                                            |
| **Password:**             | `password`                                        |

Built using the official [GCCSDK](https://www.riscos.info/index.php/GCCSDK) from [RISC OS Open](https://www.riscosopen.org/).

Includes the following libraries targetted for RISC OS UnixLib:

* OSLib
* makefiles
* mantools
* packtools
* tokenize
* menugen
* wimplib
* swiheader
* flexlib
* sflib
* libboost
* libbz2-1.0
* liblzma5
* libsqlite3-0
* libgettext
* libgif7
* libjpeg8
* libicu
* libncurses5
* libpcre3
* libreadline5
* libreadline7
* libssl1.0.2
* libxml2
* libxslt

