#
# Cookbook Name:: chef-frontend
# Recipe:: default
#
# Copyright (C) 2013 t93
# 
# All rights reserved - Do Not Redistribute
#

git "/home/casperjs" do
    repository "git://github.com/n1k0/casperjs.git"
    user "root"
    revision "1.1-beta1"
    action :checkout
end

bash "install casperjs" do
  cwd "/home/casperjs"
  user "root"
  code <<-EOH
    ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs
    EOH
end

bash "install npm packages" do
  cwd "/home"
  user "root"
  code <<-EOH
    npm install -g grunt-cli bower testem
    EOH
end

