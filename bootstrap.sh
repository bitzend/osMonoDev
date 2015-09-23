#!/usr/bin/env bash

# Add the Mono Project GPG signing key and the package repository to your system 
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

apt-get update
apt-get install -y mono-complete monodevelop-nunit monodevelop-versioncontrol > aptget.txt

mkdir /home/vagrant/OsMonoDev
cd ~/OsMonoDev
