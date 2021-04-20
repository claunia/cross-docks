# this one is important
SET(CMAKE_SYSTEM_NAME MiNT)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

set(CMAKE_CROSSCOMPILING 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER   /usr/bin/m68k-atari-mint-gcc)
SET(CMAKE_CXX_COMPILER /usr/bin/m68k-atari-mint-g++)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  /usr/m68k-atari-mint)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

SET(ENV{PKG_CONFIG_LIBDIR} /usr/m68k-atari-mint/lib/pkgconfig)
