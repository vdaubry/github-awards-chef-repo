#
# Cookbook Name:: github-awards
# Recipe:: user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

users = data_bag_item('users', 'infos')
users.delete('id')
users.each do |name, infos|
  group infos['group']
  user infos['user'] do
    group infos['group']
    system true
    shell '/bin/bash'
  end
  ssh_authorize_key infos['user'] do
    key infos['key']
    user infos['user']
  end
end