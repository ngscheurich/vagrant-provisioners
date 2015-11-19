#!/usr/bin/env bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
if [ -n "$1" ]; then
  rbenv install $1
  rbenv global $1
fi
