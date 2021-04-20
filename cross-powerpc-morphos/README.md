# Cross compilation environment

|                           |                                                   |
|--------------------------:|:--------------------------------------------------|
|             **Compiler:** | 9.2.0                                             |
|  **Target architecture:** | PowerPC                                           |
|            **Target OS:** | MorphOS                                           |
|                   **AS:** | `/opt/ppc-morphos/bin/ppc-morphos-as`             |
|                   **LD:** | `/opt/ppc-morphos/bin/ppc-morphos-ld`             |
|                   **AR:** | `/opt/ppc-morphos/bin/ppc-morphos-ar`             |
|                   **CC:** | `/opt/ppc-morphos/bin/ppc-morphos-gcc`            |
|                  **CXX:** | `/opt/ppc-morphos/bin/ppc-morphos-g++`            |
|               **RANLIB:** | `/opt/ppc-morphos/bin/ppc-morphos-ranlib`         |
| **CMake toolchain file:** | `/opt/ppc-morphos/lib/ppc-morphos.cmake`          |
|           **SSH daemon:** | *Yes*                                             |
|             **Username:** | `user`                                            |
|             **Password:** | `password`                                        |

Installed using [Marlon Beijer's Docker image](https://hub.docker.com/layers/amigadev/crosstools/ppc-morphos).
