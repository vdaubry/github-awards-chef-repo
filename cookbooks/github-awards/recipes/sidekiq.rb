#
# Cookbook Name:: github-awards
# Recipe:: puma
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/srv/www/githubawards/shared/log/' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
  recursive true
end

file '/srv/www/githubawards/shared/log/sidekiq.log' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end