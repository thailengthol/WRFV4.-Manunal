set -x #echo on

cd $DIR/netcdf-4.1.3
./configure --prefix=$DIR/netcdf --disable-dap --disable-netcdf-4 --disable-shared
make
make install

cd $DIR/mpich-3.0.4
./configure --prefix=$DIR/mpich
make
make install

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

sudo ln -sf /home/thaileng/wrf-cordex/libraries/grib2/lib/libpng12.so.0 /usr/lib/x86_64-linux-gnu/libpng12.so.0

echo "Done"
