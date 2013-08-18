#
# Cookbook Name:: chef-frontend
# Recipe:: default
#
# Copyright (C) 2013 t93
# 
# All rights reserved - Do Not Redistribute
#

bash "install npm packages" do
  cwd "/home/vagrant"
  user "root"
  code <<-EOH
    npm install -g grunt-cli
  EOH
end

