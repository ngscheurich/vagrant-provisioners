#!/usr/bin/env bash

apt-get update
apt-get upgrade
apt-get install -y git vim zsh tmux build-essential libssl-dev libreadline-dev zlib1g-dev
chsh vagrant -s `which zsh`
touch /home/vagrant/.zshrc
chown -R vagrant:users /home/vagrant/.zshrc
