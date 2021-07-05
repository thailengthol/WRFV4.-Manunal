###############################################################################################################################
export DIR=/home/thaileng/wrf-cordex/libraries/
export CC=gcc
export CXX=g++
export FC=gfortran
export FCFLAGS=-m64
export F77=gfortran
export FFLAGS=-m64
export JASPERLIB=$DIR/grib2/lib
export JASPERINC=$DIR/grib2/include
export LDFLAGS=-L$DIR/grib2/lib
export CPPFLAGS=-I$DIR/grib2/include
###############################################################################################################################
export PATH=$DIR/netcdf/bin:$PATH
export NETCDF=$DIR/netcdf
###############################################################################################################################
export PATH=$DIR/mpich/bin:$PATH
###############################################################################################################################
#export NCARG_ROOT=/usr/bin/ncl
export NCARG_ROOT=$DIR/ncl-6.6.2
export PATH=$NCARG_ROOT/bin:$PATH
###############################################################################################################################
# below added to facilitate ncl, as i used precombiled ncl libraries, i had to download gofrtran precomfiled version of 6.3.0
if [ -z "$LD_LIBRARY_PATH" ]; then
            LD_LIBRARY_PATH="/home/thaileng/wrf-cordex/libraries/Gfortran/gcc-6.3.0/lib64"
    else
                LD_LIBRARY_PATH="/home/thaileng/wrf-cordex/libraries/Gfortran/gcc-6.3.0/lib64:$LD_LIBRARY_PATH"
fi
export LD_LIBRARY_PATH
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
            . /etc/bash_completion
fi
