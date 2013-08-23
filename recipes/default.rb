#
# Cookbook Name:: chef-frontend
# Recipe:: default
#
# Copyright (C) 2013 t93
# 
# All rights reserved - Do Not Redistribute
#

git "/home/vagrant/phantomjs" do
  repository "git://github.com/ariya/phantomjs.git"
  revision "1.9"
  user "root"
  action :checkout
end

bash "install phantomjs" do
  cwd "/home/vagrant/phantomjs"
  user "root"
  code <<-EOH
    ./build.sh
  EOH
end

bash "install npm packages" do
  cwd "/home/vagrant"
  user "root"
  code <<-EOH
    npm install -g grunt-cli bower testem
  EOH
end

