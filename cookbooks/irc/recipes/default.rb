#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

home_folder = "/home/tdi"
irssi_directory = home_folder + "/.irssi"
config_location = irssi_directory + "/config"

user "tdi" do
  action :create
  home home_folder
end

package "irssi" do
  action :install 
end


directory irssi_directory  do
  action :create
  owner "tdi"
end

cookbook_file "irssi_config" do
  action :create_if_missing
  path   config_location
end
