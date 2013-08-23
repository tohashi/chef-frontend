#
# Cookbook Name:: chef-frontend
# Recipe:: default
#
# Copyright (C) 2013 t93
# 
# All rights reserved - Do Not Redistribute
#

apt_package "libicu48" do
    action :install
end

apt_package "phantomjs" do
    action :install
end

bash "install npm packages" do
  cwd "/home/vagrant"
  user "root"
  code <<-EOH
    npm install -g grunt-cli bower testem
  EOH
end

