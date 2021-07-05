set -x #echo on
#nohup lib1.sh > lib1.out 2>&1 &
mkdir -p ~/wrf-cordex/libraries

cp ./.bash_aliases ~/
source ~/.bash_aliases

sudo apt-get update
sudo apt-get install build-essential csh gfortran m4
apt install make
apt install g++
sudo apt install libfontconfig1 libxrender1

echo "Done"
