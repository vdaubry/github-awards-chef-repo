#
# Cookbook Name:: github-awards
# Recipe:: language
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

replace_or_add "LC_ALL" do
  path "/etc/environment"
  pattern "LC_ALL.*"
  line "LC_ALL=en_US.UTF-8"
end

replace_or_add "LANG" do
  path "/etc/environment"
  pattern "LANG.*"
  line "LANG=en_US.UTF-8"
end