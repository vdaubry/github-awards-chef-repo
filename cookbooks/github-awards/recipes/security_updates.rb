#
# Cookbook Name:: github-awards
# Recipe:: security_updates
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template '/etc/apt/apt.conf.d/20auto-upgrades' do
  source '20auto-upgrades.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

replace_or_add "automatic_reboot" do
  path "/etc/apt/apt.conf.d/50unattended-upgrades"
  pattern "Unattended-Upgrade::Automatic-Reboot.*"
  line 'Unattended-Upgrade::Automatic-Reboot "true";'
end