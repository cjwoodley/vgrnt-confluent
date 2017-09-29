# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define 'confluent' do |confluent|
#  confluent.vm.box = 'chef/centos-6.5'
#  confluent.vm.box = 'bento/centos-7.2'
    confluent.vm.box = 'bento/ubuntu-17.04'
    confluent.vm.provision 'shell', path: 'vagrant/ubuntu.sh'
    config.vm.box_download_insecure = true
  end


  # Optional: forward ports from VM to native machine so you can run the streaming job locally; uncomment
  # the next three lines if you want this

  config.vm.network 'forwarded_port', guest: 2181, host: 2181
  config.vm.network 'forwarded_port', guest: 9092, host: 9092
  config.vm.network 'forwarded_port', guest: 8081, host: 18081
  config.vm.network 'forwarded_port', guest: 8082, host: 8082
  config.vm.network 'forwarded_port', guest: 8083, host: 8083
  config.vm.network 'forwarded_port', guest: 9021, host: 9021


  # not sure if this is needed; experimenting with commenting this out
  # config.vm.synced_folder '~/.gnupg', '/root/.gnupg', owner: 'root', group: 'root'

  config.vm.provider 'virtualbox' do |vb|
    # change to 4096 if you're running hive
    vb.customize ['modifyvm', :id, '--memory', '4096']
    vb.customize ['modifyvm', :id, '--cpus', '2']
  end

    # use vagrant-cachier if available (common package cache)
    # (install with 'vagrant plugin install vagrant-cachier')
    if Vagrant.has_plugin?('vagrant-cachier')
        # Configure cached packages to be shared between instances of the same base box.
        # More info on the 'Usage' link above
      config.cache.scope = :box
    end

end
