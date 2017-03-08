#!/bin/bash
set -e

function install_packages {
    sudo apt-get update -y
    sudo apt-get install -y docker.io vim tmux
}

function add_user_to_docker_group {
    sudo usermod -a -G docker ubuntu
}

# Execution section
install_packages
add_user_to_docker_group
