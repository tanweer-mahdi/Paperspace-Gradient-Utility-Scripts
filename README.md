# Paperspace-Gradient-Utility-Scripts
A repo to contain bash scripts relating to Paperspace Gradient.

Script name: lightgbm_gpu.sh
Description:
Does the following:
1. Installs Boost, Cmake and OpenCL (which are the essential dependencies)
2. Installs gcc compilers 
3. Clones and builds the official LightGBM GPU build
4. Enables OpenCL to use the GPU (tested with RTX5000)
