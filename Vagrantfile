# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "base64"
  config.vm.synced_folder "~/repos/box/shared", "/home/vagrant/shared", type: 'nfs'
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  config.vm.network "forwarded_port", guest: 3002, host: 3002
  config.vm.network "forwarded_port", guest: 3003, host: 3003
  config.vm.network "forwarded_port", guest: 3004, host: 3004
  config.vm.network "forwarded_port", guest: 3005, host: 3005
  config.vm.network "forwarded_port", guest: 3006, host: 3006
  config.vm.network "forwarded_port", guest: 35729, host: 35729

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
  end

  config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      vb.customize ["modifyvm", :id, "--memory", 4000]
  end

  config.vm.network :private_network, ip: "192.168.33.10"
end
