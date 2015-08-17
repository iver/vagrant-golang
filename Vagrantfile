# -*- mode: ruby -*-
# # vi: set ft=ruby :
#
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
#  config.vm.box_url = "https://github.com/ivan-iver/vagrant_golang/releases/download/v0.1-alpha/golangmx_v0.1-alpha.box"
  config.vm.box_url = "/Users/Iver/VirtualBox VMs/ubuntu-14.04.box"
  config.vm.box = "golangmx"
  config.vm.hostname = "gophers"
  config.vm.network "private_network", ip: "10.2.2.205"
  config.vm.provision :shell, path: "bin/setup.sh"

  config.ssh.forward_agent = true
  config.vm.box_check_update = true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
    vb.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000 ]
    vb.memory = 1024
    vb.cpus = 2
  end
end
