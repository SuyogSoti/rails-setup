#!/bin/bash

#updating the system
apt-get update

#installing the dependencies
echo "installing the dependencies"
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

#download the rbenv
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv

#put rbnev in your path
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
