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


group 'ubuntu'
user 'ubuntu' do
  group 'ubuntu'
  system true
  shell '/bin/bash'
end
ssh_authorize_key 'ubuntu' do
  key 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3AmTJMN5tpCljaddrj4KzlKRBLSr+Tyz7/ch4egpi0FxbfltJ/PQFEOpz4U2TZXFE8aehqtiGwcYLI25mEtV8tiridsy7LLwFE2yPR0oKEACfuidomCQSOr/3ifCwP8hOy2lPupPIwHZT+9TjQObgdv7sZNj3xEvlWVpvXPb50Opqp/tq5vSAsUb1vz8EO2ik/0wZt31i4HygQ4SKz4Yz+LM298kIlVx2nFyK6iPUWom47FMgiz2hMYBEi8r6uYDSAwWtUN36eP4w2QL72IZMeuYTo0tFJOzpPNXyvSH8kBqPHqIfpo2DU8Bh5R6lW59GUnL2rd5KnNNQJHmC83iB'
  user 'ubuntu'
end


group 'deploy'
user 'deploy' do
  group 'deploy'
  system true
  shell '/bin/bash'
end
ssh_authorize_key 'deploy' do
  key 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3AmTJMN5tpCljaddrj4KzlKRBLSr+Tyz7/ch4egpi0FxbfltJ/PQFEOpz4U2TZXFE8aehqtiGwcYLI25mEtV8tiridsy7LLwFE2yPR0oKEACfuidomCQSOr/3ifCwP8hOy2lPupPIwHZT+9TjQObgdv7sZNj3xEvlWVpvXPb50Opqp/tq5vSAsUb1vz8EO2ik/0wZt31i4HygQ4SKz4Yz+LM298kIlVx2nFyK6iPUWom47FMgiz2hMYBEi8r6uYDSAwWtUN36eP4w2QL72IZMeuYTo0tFJOzpPNXyvSH8kBqPHqIfpo2DU8Bh5R6lW59GUnL2rd5KnNNQJHmC83iB'
  user 'deploy'
end