# WRF V4. Manual for Ubuntu 20.0.4

## 1. Setting Environment
This is describing the steps to install all the requried environment for compilation of the WRF& WPS.
All the requred libraries and its installation process was written in the shell script within folder library_installation:
* 1lib.sh : to install packages for installation
* 2lib.sh : to download and unzip all neccessary libraries
* 3lib.sh : to install NetCDF, mpich, zlib, libpng, and jasper library
* 4lib.sh : to download and install NCL and Gfortran
* getwrf.sh : to download WRF&WPS from GitHub Repository, and WRF cordex

## 2. WRF& WPS Compilation
You need to make sure that you have installed all the required libraries correctly, especially NetCDF library.
After that start compiling WRF with following steps and procedure.
* tar xvfz WRFV4.0_CORDEX.tar.gz
* Edit the **Registry/Registry.EM** and add the line include *'registry.cordex'* after the line *‘registry.em_shared_collection’*
* Inside WRF/ directory type: 
  - ./clean
  - ./configure, then choose
  - GNC(gfortran/gcc) = 34(dmpar)
  - compile for nesting = 1-basic
  - Edit the configure.wrf file by adding *- DCORDEXDIAG* after *- DNETCDF*
  - ./compile em_real >& log.compile
* If the compilation is successful, you should find these executables in WRF/main (non zero size)
  -  wrf.exe model executable
  -  real.exe real data initialization
  -  ndown.exe one way nesting
  -  tc.exe for tc bogusing (serial only)
 * Inside WPS/ directory type: 
  -  ./configure
  -  select 3(dmpar) for compilation
  -  ./compile >& log.compile
  -  If successful, these executables should be in your WPS/ directory (and they are linked, respectively, from their source code directories):
    -  geogrid.exe --> geogrid src geogrid.exe
    -  ungrib.exe --> ungrib src ungrib.exe
    -  metgrid.exe --> metgrid src metgrid.exe

## 4. Data Pre-Processing

## 5. Data Visualization

## 6. Data Post-Processing

