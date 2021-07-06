set -x #echo on
source ~/.bash_aliases

sudo apt-get update
sudo apt-get install build-essential csh gfortran m4
apt install make
apt install g++
sudo apt install libfontconfig1 libxrender1

echo "Done"
