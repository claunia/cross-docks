# Cross compilation environment

|                           |                                                   |
|--------------------------:|:--------------------------------------------------|
|             **Compiler:** | 8.4.0                                             |
|  **Target architecture:** | PowerPC                                           |
|            **Target OS:** | AmigaOS >= 4.0                                    |
|                   **AS:** | `/opt/ppc-amigaos/bin/ppc-amigaos-as`             |
|                   **LD:** | `/opt/ppc-amigaos/bin/ppc-amigaos-ld`             |
|                   **AR:** | `/opt/ppc-amigaos/bin/ppc-amigaos-ar`             |
|                   **CC:** | `/opt/ppc-amigaos/bin/ppc-amigaos-gcc`            |
|                  **CXX:** | `/opt/ppc-amigaos/bin/ppc-amigaos-g++`            |
|               **RANLIB:** | `/opt/ppc-amigaos/bin/ppc-amigaos-ranlib`         |
| **CMake toolchain file:** | `/opt/ppc-amigaos/lib/ppc-amigaos.cmake`          |
|           **SSH daemon:** | *Yes*                                             |
|             **Username:** | `user`                                            |
|             **Password:** | `password`                                        |

Installed using [Marlon Beijer's Docker image](https://hub.docker.com/layers/amigadev/crosstools/ppc-amigaos).
