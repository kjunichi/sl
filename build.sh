#!/bin/bash
set -e
$EMSCRIPTEN/emcc -s ASYNCIFY=1 -O2 -Wall -fPIC -I. -DEMSCRIPTEN -o sl.html sl.c libpdcurses.a `sdl-config --libs` --preload-file pdcfont.bmp
