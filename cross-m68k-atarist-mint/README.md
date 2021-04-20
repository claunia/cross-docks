# Cross compilation environment

|                           |                                                   |
|--------------------------:|:--------------------------------------------------|
|             **Compiler:** | 4.6.4 (MiNT 20200504)                             |
|  **Target architecture:** | m68k                                              |
|            **Target OS:** | Atari ST (TOS/GEM/AES) and MiNT                   |
|                   **AS:** | `/usr/bin/m68k-atari-mint--as`                    |
|                   **LD:** | `/usr/bin/m68k-atari-mint--ld`                    |
|                   **AR:** | `/usr/bin/m68k-atari-mint--ar`                    |
|                   **CC:** | `/usr/bin/m68k-atari-mint--gcc`                   |
|                  **CXX:** | `/usr/bin/m68k-atari-mint--g++`                   |
|               **RANLIB:** | `/usr/bin/m68k-atari-mint--ranlib`                |
| **CMake toolchain file:** | `/usr/m68k-atari-mint/toolchain.cmake`            |
| **SSH daemon:**           | *Yes*                                             |
| **Username:**             | `user`                                            |
| **Password:**             | `password`                                        |

Installed using [Vincent Rivière's m68k-atari-mint cross-tools](http://vincent.riviere.free.fr/soft/m68k-atari-mint/ubuntu.php).

Includes the following libraries:

* cflib
* gemma
* ldg
* sdl
* ncurses
* zlib
* readline
* openssl
