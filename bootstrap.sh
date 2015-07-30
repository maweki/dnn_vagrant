#!/usr/bin/env bash
apt-get install -y curl git
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
cd
git clone https://github.com/torch/distro.git ./torch --recursive
cd ~/torch
./install.sh

source ~/.bashrc
source ~/torch/install/bin/torch-activate
luarocks install nngraph
luarocks install optim

cd
git clone https://github.com/karpathy/char-rnn.git
cd ~/char-rnn
