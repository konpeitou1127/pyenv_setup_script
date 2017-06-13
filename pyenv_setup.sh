#!/bin/sh

echo 'export http_proxy=http://proxy.examlpe.co.jp:xxxx' >> ~/.bash_profile
echo 'export https_proxy=http://proxy.example.xo.jp:xxxx' >> ~/.bash_profile
git config --global http.proxy http://proxy.example.co.jp:xxxx
git config --global https.proxy http://proxy.example.co.jp:xxxx

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo '# pyenv path' >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

echo '########################'
echo 'pyenv setup finished'
echo 'please re-login'
