# docker-knowledge-share

This folder stores the configuration files and some tips to give an
introductory and informal talk on docker containers. It has the following
requirements:

 - [Git](https://git-scm.com/downloads)
 - [Vagrant](https://www.vagrantup.com/downloads.html)
 - [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

All these tools are supported by several platforms. Please ensure that you have
all of them installed in advance, in order to save some precious time in the
knowledge share sessions.

Git will be mostly used to clone this repository. You can download a snapshot of
the repository from github, if you don't want to use git.

The goal of using Vagrant consists on having a reproducible environment, where
[docker](https://www.docker.com/) and all its dependencies are installed and
configured. You will also find some files already provisioned in the VM, which
will be helpful for the knowledge share.

Vagrant can work with different [providers](https://www.vagrantup.com/docs/providers/),
but the Vagrantfile that we provide is customized for VirtualBox. If you prefer
to use a different provider, you might need to  modify Vagrantfile to suit your
needs.

# Setting up the environment

Although this tutorial should work both on GNU/Linux/Mac OSX/Windows host, the
instructions given will be based on an Ubuntu 16.04 host. However, it should
not be difficult to adapt the commands to those on your host.

 1. Install Git, Vagrant, and a Virtualbox on your host

 2. Clone this repository to your local machine

 user@host ~> git clone https://github.com/jvidalallende/random-stuff

 3. Get into the *random-stuff/docker-knowledge-share* folder
 
 user@host ~> cd random-stuff/docker-knowledge-share

 4. Spin up the VM using vagrant

 user@host ~/random-stuff/docker-knowledge-share> vagrant up

 5. Once vagrant finishes setting up and provisioning the VM, get into it:

 user@host ~/random-stuff/docker-knowledge-share> vagrant ssh

 6. You should see that the prompt has changed. You are now ready to go! Type 
 the following command to verify that docker is correctly installed:

 ubuntu@ubuntu-xenial:~$ docker info
