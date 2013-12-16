#
# Cookbook Name:: mosh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# mosh
%w{python-software-properties}.each do |name|
	package name do
		action :install
	end
end
bash "mosh_install" do
	code <<-EOH
		add-apt-repository ppa:keithw/mosh
		apt-get update
	EOH
end
%w{mosh}.each do |name|
	package name do
		action :install
	end
end

