#
# Cookbook Name:: github-awards
# Recipe:: sshd
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

replace_or_add "PermitRootLogin" do
  path "/etc/ssh/sshd_config"
  pattern "PermitRootLogin.*"
  line "PermitRootLogin no"
end

replace_or_add "PasswordAuthentication" do
  path "/etc/ssh/sshd_config"
  pattern "PasswordAuthentication.*"
  line "PasswordAuthentication no"
end

service "ssh" do
  action :restart
end