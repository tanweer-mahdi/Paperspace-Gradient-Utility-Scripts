apt install build-essential
apt-get install -y libboost-all-dev
apt install ocl-icd-opencl-dev
apt-get update --fix-missing
pip3 install cmake
git clone --recursive https://github.com/Microsoft/LightGBM 
cd LightGBM && mkdir build && cd build
cmake -DUSE_GPU=1 ..
make -j4
pip3 uninstall lightgbm
cd ../python-package/ && python3 setup.py install --precompile
mkdir -p /etc/OpenCL/vendors && echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd
