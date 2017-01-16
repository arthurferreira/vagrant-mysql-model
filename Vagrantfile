Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "vagrant-mysql-model"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose = "vvv"
    ansible.sudo = true
  end
end
