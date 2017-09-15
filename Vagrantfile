# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.network :forwarded_port, guest: 80, host: 11180
  config.vm.network :forwarded_port, guest: 8081, host: 11181
  config.vm.network :forwarded_port, guest: 22, host: 11122
  config.vm.network :private_network, ip: "192.168.11.11"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.ssh.forward_agent = true


  config.vm.provider :virtualbox do |vb|
    vb.name = "Sunger"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--ostype", "Debian_64"]
  end

  config.vm.synced_folder "./", "/vagrant", id: "vagrant-root", nfs: true, mount_options: ['rw', 'vers=3', 'tcp', 'fsc']
  config.vm.provision :shell, path: "Vagrant/provision.sh"

end
