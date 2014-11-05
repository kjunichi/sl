#!/bin/bash
set -e
EM_DIR=~/local/emscripten
$EM_DIR/emcc -O2 -Wall -fPIC -I. -DEMSCRIPTEN -o sl.html sl.c libpdcurses.a `sdl-config --libs` --preload-file pdcfont.bmp
