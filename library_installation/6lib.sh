set -x #echo on

cd $DIR
mkdir ncl-6.6.2
cd ncl-6.6.2
wget https://www.earthsystemgrid.org/dataset/ncl.662_2.nodap/file/ncl_ncarg-6.6.2-Debian9.8_64bit_nodap_gnu630.tar.gz
tar xzvf ncl_ncarg-6.6.2-Debian9.8_64bit_nodap_gnu630.tar.gz

cd $DIR
mkdir Gfortran
cd Gfortran
wget http://gfortran.meteodat.ch/download/x86_64/releases/gcc-6.3.0.tar.xz
tar xf gcc-6.3.0.tar.xz

#error while loading shared libraries: libpng12.so.0: cannot open shared object file: No such file or directory
sudo ln -sf $DIR/grib2/lib/libpng12.so.0 /usr/lib/x86_64-linux-gnu/libpng12.so.0

echo "Done"
