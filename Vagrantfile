# vim: set ft=ruby:
Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  config.vm.box_version = "1.0.2"
  config.vm.network :private_network, ip: "192.168.10.100"

  config.vm.provider :virtualbox

  config.vm.provision :puppet do |puppet|
    puppet.options = "--verbose --debug"
    puppet.environment_path = "environments"
    puppet.environment = "development"
  end
end
