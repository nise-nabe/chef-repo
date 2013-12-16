#
# Cookbook Name:: mosh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# mosh
%w{mosh}.each do |name|
	package name do
		action :install
	end
end

