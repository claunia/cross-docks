# Cross compilation environment

|                           |                                                   |
|--------------------------:|:--------------------------------------------------|
|             **Compiler:** | 6.5.0b 210307172926                               |
|  **Target architecture:** | m68k                                              |
|            **Target OS:** | AmigaOS                                           |
|                   **AS:** | `/opt/m68k-amigaos/bin/m68k-amigaos-as`           |
|                   **LD:** | `/opt/m68k-amigaos/bin/m68k-amigaos-ld`           |
|                   **AR:** | `/opt/m68k-amigaos/bin/m68k-amigaos-ar`           |
|                   **CC:** | `/opt/m68k-amigaos/bin/m68k-amigaos-gcc`          |
|                  **CXX:** | `/opt/m68k-amigaos/bin/m68k-amigaos-g++`          |
|               **RANLIB:** | `/opt/m68k-amigaos/bin/m68k-amigaos-ranlib`       |
| **CMake toolchain file:** | `/opt/m68k-amigaos/lib/m68k-amigaos.cmake`        |
|           **SSH daemon:** | *Yes*                                             |
|             **Username:** | `user`                                            |
|             **Password:** | `password`                                        |

Installed using [Marlon Beijer's Docker image](https://hub.docker.com/layers/amigadev/crosstools/m68k-amigaos).
