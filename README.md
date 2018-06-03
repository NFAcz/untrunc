Untrunc
=======

Restore a damaged (truncated) mp4, m4v, mov, 3gp video. Provided you have a similar not broken video. And some luck.

This is a fork of https://github.com/ponchio/untrunc , with changes regarding to compatibility with recent FFmpeg releases, and 4GB+ support.

Build requirements:

 * Nasm
 * clang/gcc >= 4.9
 * glibc-static
 * libstdc++-static
 * xz-static

How to build it:

    git clone --recurse-submodule
    ./static.sh

This will build FFmpeg, and then untrunc static binary. Use provided Dockerfile to build a bare-bones container with only untrunc binary inside.

Tested on Fedora 28.
