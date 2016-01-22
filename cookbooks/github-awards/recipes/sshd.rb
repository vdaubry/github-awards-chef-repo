#
# Cookbook Name:: github-awards
# Recipe:: sshd
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

openssh_server node['sshd']['config_file'] do
  PermitRootLogin no
  PasswordAuthentication no
end