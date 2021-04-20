# Docker images with cross compilers preinstalled

This repository contains a series of Docker descriptions to create, and run, containers with cross compilers, and their needed SDKs for several environment.

These containers open an SSH port and have rsync installed so they can be used with CLion and other remote IDEs.

Each directory contains a `README.md` file describing the exact compiler, version, environment and target, as well as, if available, a `CMake` toolchain that autoconfigures everything.

The images are also uploaded to [Docker Hub](https://hub.docker.com/u/claunia).
