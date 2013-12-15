#
# Cookbook Name:: tmux
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# tmux
%w{build-essential libevent-dev libncurses5-dev}.each do |name|
	package name do
		action :install
	end
end
bash "install_tmux" do
	cwd "/usr/local/src"
	user "root"
	group "root"
	code <<-EOH
		curl -L -O http://downloads.sourceforge.net/project/tmux/tmux/tmux-1.8/tmux-1.8.tar.gz
		tar xvf tmux-1.8.tar.gz
		cd tmux-1.8
		./configure --prefix=$INSTALL_PATH && make && make install
	EOH
	environment "INSTALL_PATH" => "/usr/local"
end
