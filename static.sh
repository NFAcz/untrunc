#!/bin/sh
cd FFmpeg && ./configure && make -j4 && cd ..
clang++ -o untrunc -I/usr/include/ffmpeg -I./FFmpeg file.cpp main.cpp track.cpp atom.cpp mp4.cpp FFmpeg/libavformat/libavformat.a FFmpeg/libavcodec/libavcodec.a FFmpeg/libswresample/libswresample.a FFmpeg/libavutil/libavutil.a /lib64/libpthread.a /lib64/libz.a /usr/lib64/liblzma.a -ggdb -static -O3 -D_FILE_OFFSET_BITS=64
