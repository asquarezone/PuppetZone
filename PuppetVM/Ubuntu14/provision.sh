sudo apt-get -y update
sudo wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
sudo dpkg -i puppetlabs-release-pc1-trusty.deb
sudo apt-get -y update
sudo apt-get -y install puppet-agent
