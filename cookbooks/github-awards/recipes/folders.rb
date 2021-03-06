#
# Cookbook Name:: github-awards
# Recipe:: folders
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/srv' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

directory '/srv/www' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

directory '/srv/www/githubawards' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

directory '/srv/www/githubawards/releases' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end

directory '/srv/www/githubawards/shared' do
  owner 'deploy'
  group 'deploy'
  mode '0775'
end