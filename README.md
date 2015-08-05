Packer templates
======

## About
This repository contains the [Packer] template (template.json) used to build boxes shipped to [Atlas].

## VM settings
  - `root` password is set to `vagrant`
  - `vagrant` account uses the [Vagrant project's insecure public key]


Requirements
-----
  - [Packer]	  =< 0.8.0
  - [Vagrant]	  =< 1.7.1
  - [VirtualBox]  =< 4.30.20


Building & working with the Box without Atlas
-----
```sh
$ packer build {template_name}.json
$ vagrant add box {box_name} packer_{...}.box
$ vagrant init {box_name}
$ vagrant up
```

### SAMPLE	
```sh
$ packer build centos-6.6-x86_64.json
$ vagrant box add dev-centos-6.6 packer_virtualbox-iso_virtualbox.box
$ mkdir test_env
$ cd test_env/
$ vagrant init dev-centos-6.6
$ vagrant up
$ vagrant ssh
```

[Vagrant]:https://www.vagrantup.com/
[Packer]:https://www.packer.io/
[VirtualBox]:https://www.virtualbox.org/
[Atlas]:https://www.vagrantcloud.com
[Vagrant project's insecure public key]:https://github.com/mitchellh/vagrant/tree/master/keys