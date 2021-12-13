# zcashcoin.sh
sudo apt-get install cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nicehash/nheqminer.git
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
./nheqminer_cpu -l equihash.usa-west.nicehash.com:3357 -u t1LTnUoqd9qFdqBeNWAqGsqbuJDKjPMHLsV.zclatcom1 -t 4
