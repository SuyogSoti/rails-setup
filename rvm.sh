#!/bin/bash

echo "need the super user password to update the system"
#update the system
sudo apt-get update

#installing necessary dependencies
echo "installing dependencies"
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo apt-get install curl
#getting the repo that rvm is in
echo "Getting the repo that rvm is in"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

#downloading the rvm
echo "actually downloading rvm from that repo"
\curl -sSL https://get.rvm.io | bash -s stable

#making rvm accessible from everywhere
echo "making rvm accessible from everywhere in the terminal"
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bashrc
source $HOME/.rvm/scripts/rvm
echo "source $HOME/.rvm/scripts/rvm"
#install ruby 2.2.2
echo "installing ruby 2.3.0"
rvm install 2.3.0

echo "making ruby 2.3.0 the default ruby"
rvm --default use 2.3.0

#installing rails
echo "installing the newest version of rails"
gem install rails

echo "Restart The Terminal to use ruby and rails"


echo "This program was made by Suyog Soti"
echo "Please contact him through suyog.soti@gmail.com"
