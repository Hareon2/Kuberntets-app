Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "3096"
    vb.cpus = 4
  end

  config.vm.synced_folder ".", "/home/vagrant/code",
    owner: "www-data", group: "www-data"

  config.vm.network "private_network", ip: "192.168.33.10"
end