#
# Cookbook Name:: github-awards
# Recipe:: sshd
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'setup_sshd' do
  command 'echo "foo" >> node["sshd"]["config_file"]'
end

