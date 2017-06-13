#!/bin/sh

pyenv install anaconda3-4.3.0
pyenv rehash
pyenv global anaconda3-4.3.0
python -V

echo '# anaconda path' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/versions/anaconda3-4.3.0/bin/:$PATH"' >> ~/.bash_profile

echo '# CUDA and cuDNN paths' >> ~/.bash_profile
echo 'export PATH="/usr/local/cuda-7.5/bin:$PATH"' >> ~/.bash_profile
echo 'export CFLAGS=-I/usr/local/cuda-7.5/include' >> ~/.bash_profile
echo 'export CFLAGS=-I/usr/local/cuda-7.5/lib64' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH="/usr/loca/cuda-7.5/lib64:$LD_LIBRARY_PATH"' >> ~/.bash_profile

source ~/.bash_profile
scl enable devtoolset-2 bash

conda update --all
conda clean --all
pip install -U setupools
pip install chainer

python -c 'import cupy'
python -c 'import chainer'

echo 'chianer setup finished'
