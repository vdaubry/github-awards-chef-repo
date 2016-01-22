#
# Cookbook Name:: github-awards
# Recipe:: user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group 'ubuntu'
user 'ubuntu' do
  group 'ubuntu'
  system true
  shell '/bin/bash'
end

group 'deploy'
user 'deploy' do
  group 'deploy'
  system true
  shell '/bin/bash'
end