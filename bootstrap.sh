#!/usr/bin/env bash
apt-get install -y curl git
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
cd /root
git clone https://github.com/torch/distro.git ./torch --recursive
cd /root/torch
./install.sh

source /root/.bashrc
source /root/torch/install/bin/torch-activate
luarocks install nngraph
luarocks install optim

cd /root
git clone https://github.com/karpathy/char-rnn.git
cd /root/char-rnn
