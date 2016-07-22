# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty64"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define :packertest do |box|
  end

  config.vm.provision :ansible do |box|
    box.playbook = "test.yml"
  end
end
