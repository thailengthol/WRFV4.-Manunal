#!/bin/bash
set -x #echo on

cd $DIR/zlib-1.2.7
./configure --prefix=$DIR/grib2
make
make install

cd $DIR/libpng-1.2.50
./configure --prefix=$DIR/grib2
make
make install

cd $DIR/jasper-1.900.1
./configure --prefix=$DIR/grib2
make
make install

sudo ln -sf /home/thaileng/wrf_cordex/libraries/grib2/lib/libpng12.so.0 /usr/lib/x86_64-linux-gnu/libpng12.so.0

echo "Done"
