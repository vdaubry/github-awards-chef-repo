#
# Cookbook Name:: github-awards
# Recipe:: postgres
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


node.set['postgresql']['enable_pgdg_apt'] = true

node.set['postgresql']['version'] = "9.4"

node.set['postgresql']['setup_script'] = "postgresql94-setup"

if node['postgresql']['enable_pgdg_apt']
  node.set['postgresql']['dir'] = '/etc/postgresql/9.4/main'
  node.set['postgresql']['server']['service_name'] = "postgresql"
  node.set['postgresql']['server']['packages'] = ["postgresql-9.4"]
  node.set['postgresql']['client']['packages'] = ["postgresql-client-9.4", "libpq-dev"]
end

#TODO : edit pg_hba.conf
#node['postgresql']['config']['listen_addresses'] = 'localhost'

include_recipe "postgresql::server"
include_recipe "postgresql::ruby"