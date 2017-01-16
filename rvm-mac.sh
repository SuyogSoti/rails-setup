#!/bin/bash


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
#install ruby 2.3.2
echo "installing ruby 2.3.2"
rvm install 2.3.2

echo "making ruby 2.3.2 the default ruby"
rvm --default use 2.3.2

#installing rails
echo "installing the newest version of rails"
gem install rails

echo "Restart The Terminal to use ruby and rails"

echo "This program was made by Suyog Soti"
echo "Please contact him through suyog.soti@gmail.com"
