#!/usr/bin/env bash

pacman --sync --refresh --sysupgrade --noconfirm
pacman --sync --noconfirm git vim zsh tmux base-devel
chsh vagrant -s `which zsh`
