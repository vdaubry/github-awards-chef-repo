#
# Cookbook Name:: github-awards
# Recipe:: swap
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

swap_file '/mnt/swap' do
  size      2048    # MBs
end