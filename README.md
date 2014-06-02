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

Troubleshooting
---------------

If `vagrant up` produces the following error, try using the 32bit base box:

    ==> default: Waiting for machine to boot. This may take a few minutes...
        default: SSH address: 127.0.0.1:2222
        default: SSH username: vagrant
        default: SSH auth method: private key
        default: Warning: Connection timeout. Retrying...
        default: Warning: Connection timeout. Retrying...
        default: Warning: Connection timeout. Retrying...
    The guest machine entered an invalid state while waiting for it
    to boot. Valid states are 'starting, running'. The machine is in the
    'paused' state. Please verify everything is configured
    properly and try again.

Just comment in the `trusty32` line and comment out the `trusty64` line.
(I have to use the `trusty32` base box on my old 32bit Ubuntu 13.10 host OS running VirtualBox 2.2.16).
