#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{build-essential libncurses5-dev mercurial}.each do |name|
	package name do
		action :install
	end
end

bash "install_vim" do
	cwd "/usr/local/src"
	user "root"
	group "root"
	code <<-EOH
		hg clone https://vim.googlecode.com/hg/ vim
		cd vim
		./configure --prefix=$INSTALL_PATH --enable-multibyte --with-features=big --enable-pythoninterp --enable-luainterp
		make
		make install
	EOH
	environment "INSTALL_PATH" => "/usr/local"
end
