Vagrant Developer Box
=====================

This Vagrant file will provision (using Puppet) a basic Ubuntu 14.04 box with developer tools.
The selection of packages and configurations are purely personal!

Contains:

* VIM and configuration
* GIT and gitconfig
* Codevalidator and configuration
* Python, PIP and some packages
* JDK, Maven
* PostgreSQL
* Redis
* Memcached

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
