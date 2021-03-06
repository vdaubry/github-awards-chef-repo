#
# Cookbook Name:: github-awards
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#First update packages
include_recipe 'apt::default'

#Install packages
apt_repository "ruby" do
  uri "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu"
  distribution 'trusty'
  components ['main']
  key 'C3173AA6'
  keyserver 'keyserver.ubuntu.com'
end

apt_package "htop tmux fail2ban"
apt_package "software-properties-common git"
apt_package "ruby2.2 ruby2.2-dev build-essential zlib1g-dev libpq-dev nodejs"
gem_package 'bundler'


#Install tools after packages (to avoid error such as : https://github.com/chef-cookbooks/build-essential/issues/110)
include_recipe 'github-awards::user'
include_recipe 'github-awards::folders'
include_recipe 'github-awards::puma'
include_recipe 'github-awards::sidekiq'
include_recipe 'github-awards::sshd'
include_recipe 'github-awards::language'
include_recipe 'github-awards::security_updates'
include_recipe 'github-awards::swap'
include_recipe 'github-awards::postgres'
include_recipe 'github-awards::redis'
include_recipe 'github-awards::nginx'
include_recipe 'github-awards::logrotate'


reboot 'app_requires_reboot' do
  action :request_reboot
  reason 'Need to reboot when the run completes successfully.'
  delay_mins 1
end

#Todo : Deal with environment variables : gets secrets from chef data_bag ?
#Export all environement vars into a .env file
#then use foreman to export an upstart job
#=> http://anlek.com/2015/01/using-foreman-with-upstart-capistrano/