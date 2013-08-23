#
# Cookbook Name:: chef-frontend
# Recipe:: default
#
# Copyright (C) 2013 t93
# 
# All rights reserved - Do Not Redistribute
#

extract_path = "/usr/local/bin"

git "/home/vagrant/casperjs" do
    repository "git://github.com/n1k0/casperjs.git"
    user "root"
    revision "1.1-beta1"
    action :checkout
end

bash "install casperjs" do
  cwd "/home/vagrant/casperjs"
  user "root"
  code <<-EOH
    ln -s `pwd`/bin/casperjs #{extract_path}/casperjs
  EOH
  not_if { ::File.exists?(extract_path) }
end

bash "install npm packages" do
  cwd "/home/vagrant"
  user "root"
  code <<-EOH
    npm install -g grunt-cli bower testem
  EOH
end

