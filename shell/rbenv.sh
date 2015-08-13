#!/usr/bin/env bash

HOME=/home/vagrant

git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.zshrc
git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
if [ -n "$1" ]; then
  rbenv install $1
  rbenv global $1
fi
