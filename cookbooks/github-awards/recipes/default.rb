#
# Cookbook Name:: github-awards
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'github-awards::user'

apt_repository "ruby" do
  uri "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu"
  distribution 'trusty'
  components ['main']
  key 'C3173AA6'
  keyserver 'keyserver.ubuntu.com'
end

apt_package "htop tmux"
apt_package "software-properties-common git"
apt_package "ruby2.2 ruby2.2-dev build-essential zlib1g-dev libpq-dev nodejs"
gem_package 'bundler'