set -x #echo on
cd $DIR

wget https://sourceforge.net/projects/libpng/files/libpng12/older-releases/1.2.50/libpng-1.2.50.tar.gz
wget https://www.mpich.org/static/tarballs/3.0.4/mpich-3.0.4.tar.gz
wget http://repository.timesys.com/buildsources/j/jasper/jasper-1.900.1/jasper-1.900.1.tar.gz
wget https://www.zlib.net/fossils/zlib-1.2.7.tar.gz
wget https://src.fedoraproject.org/lookaside/pkgs/netcdf/netcdf-4.1.3.tar.gz/46a40e1405df19d8cc6ddac16704b05f/netcdf-4.1.3.tar.gz

tar xzvf netcdf-4.1.3.tar.gz
tar xzvf mpich-3.0.4.tar.gz
tar xzvf zlib-1.2.7.tar.gz
tar xzvf libpng-1.2.50.tar.gz
tar xzvf jasper-1.900.1.tar.gz

echo "Done"
