hup sh ./lib3.sh > lib3netcdf.out 2>&1
set -x #echo on

cd $DIR/netcdf-4.1.3
./configure --prefix=$DIR/netcdf --disable-dap --disable-netcdf-4 --disable-shared
make
make install

echo "Done"
