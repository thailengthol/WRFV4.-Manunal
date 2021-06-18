hup sh ./lib4.sh > lib4mpi.out 2>&1 &

set -x #echo on

cd $DIR/mpich-3.0.4
./configure --prefix=$DIR/mpich
make
make install

echo "Done"
