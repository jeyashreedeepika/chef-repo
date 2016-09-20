Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-14.04"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
  config.vm.hostname = "vagrant-server" 
  config.vm.provider "virtualbox" do |v|
   v.customize ["modifyvm", :id, "--name", "virtualbox-1", "--memory", 512]
  end
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.chef.io/organizations/test-organization1"
    chef.validation_key_path = ".chef/test-organization1-validator.pem"
    chef.validation_client_name = "test-organization1-validator"
    chef.node_name = "vagrant-node"
  end
end
