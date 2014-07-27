# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use an Ubuntu 14.04 box
  config.vm.box = "trusty64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/trusty-server-cloudimg-amd64-juju-vagrant-disk1.box"

  config.vm.network "private_network", type: "dhcp"
  # Access port 5678 via (localhost):5678
  config.vm.network :forwarded_port, guest: 5679, host: 5679

  # SSH Key Forwarding
  config.ssh.forward_agent = true
end
