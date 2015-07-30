# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty32"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder "./training_data", "/home/vagrant/char-rnn/data"


  $script = <<SCRIPT
cd ~/char-rnn
echo "Type \"th train.lua -data_dir data/some_folder -gpuid -1\" to train"
echo "Type \"th sample.lua cv/some_checkpoint.t7 -gpuid -1\" to sample"
SCRIPT
  config.vm.provision "shell", inline: $script
end
