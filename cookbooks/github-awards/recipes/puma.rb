#
# Cookbook Name:: github-awards
# Recipe:: puma
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/srv/www/githubawards/shared/tmp/sockets/' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
  recursive true
end

file '/srv/www/githubawards/shared/tmp/sockets/puma.sock' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
  force_unlink true
end

directory '/srv/www/githubawards/shared/log/' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
  recursive true
end

file '/srv/www/githubawards/shared/log/puma_access.log' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

directory '/srv/www/githubawards/shared/tmp/pids/' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
  recursive true
end

file '/srv/www/githubawards/shared/tmp/pids/puma.pid' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

