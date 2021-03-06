#
# Cookbook Name:: github-awards
# Recipe:: nginx
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "nginx"

execute "sudo rm -f /etc/nginx/sites-available/default"
execute "sudo rm -f /etc/nginx/sites-enabled/default"

template '/etc/nginx/sites-available/githubawards' do
  source 'nginx-template.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

execute "sudo ln -sf /etc/nginx/sites-available/githubawards /etc/nginx/sites-enabled/githubawards"