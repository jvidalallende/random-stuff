# docker-knowledge-share

This folder stores the configuration files and some tips to give an
introductory and informal talk on docker containers. It has the following
requirements:

 - [Vagrant](https://www.vagrantup.com/downloads.html)
 - [Virtualbox*](https://www.virtualbox.org/wiki/Downloads)

Vagrant can work with different [providers](https://www.vagrantup.com/docs/providers/),
but the Vagrantfile that we provide is customized for VirtualBox. If you prefer
to use a different provider, you might need to  modify Vagrantfile to suit your
needs.

The goal of using Vagrant consists on having a reproducible environment, where
[docker](https://www.docker.com/) and all its dependencies are installed and
configured. You will also find some files already provisioned in the VM, which
will be helpful for the knowledge share.
