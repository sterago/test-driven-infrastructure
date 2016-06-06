#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

cookbook_file '/usr/local/bin/foo'

user 'jsmith'

cron 'foo' do
  command '/usr/local/bin/foo'
  user 'jsmith'
end
