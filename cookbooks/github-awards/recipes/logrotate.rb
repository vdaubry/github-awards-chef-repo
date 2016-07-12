#
# Cookbook Name:: github-awards
# Recipe:: logrotate
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

logrotate_app 'app-logs' do
  cookbook  'logrotate'
  path      ['/srv/www/githubawards/shared/log/*.log']
  frequency 'weekly'
  options   ['missingok', 'compress', 'delaycompress', 'notifempty', 'copytruncate']
  rotate    5
end