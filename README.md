Vagrant Developer Box
=====================

Contains:

* Python
* VIM and configuration
* Codevalidator and configuration
* JDK

Usage
-----

Install Vagrant using the latest version from https://www.vagrantup.com/downloads.html

Bootstrap the Vagrant box:

    git clone https://github.com/hjacobs/vagrant-dev-box.git
    cd vagrant-dev-box
    vagrant up

If you are already running Ubuntu (or Xubuntu) 14.04, you can apply the Puppet manifests manually on your main system.
Applying the puppet configuration to your local system:

    sudo puppet apply --modulepath=modules manifests/default.pp
