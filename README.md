# WRF V4. Manual for Ubuntu 20.0.4

## 1. Setting Environment
This is describing the steps to install all the requried environment for compilation of the WRF& WPS.
All the requred libraries and its installation process was written in the shell script within folder library_installation:
* 1lib.sh : to install packages for installation
* 2lib.sh : to download and unzip all neccessary libraries
* 3lib.sh : to install NetCDF, mpich, zlib, libpng, and jasper library
* 4lib.sh : to download and install NCL and Gfortran
* getwrf.sh : to download WRF&WPS from GitHub Repository, and WRF cordex

## 2. WRF Compilation
You need to make sure that you have installed all the required libraries correctly, especially NetCDF library.
After that start compiling WRF with following steps and procedure.
### a. extracting WRF cordex
* tar xvfz WRFV4.0_CORDEX.tar.gz
* Edit the **Registry/Registry.EM** and add the line include *registry.cordex* after the line *‘registry.em_shared_collection’*


## 3. WPS Compilation

## 4. Data Pre-Processing

## 5. Data Visualization

## 6. Data Post-Processing

