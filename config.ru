require 'rubygems'
require 'rack'
require 'sinatra'

cwd     = File::dirname(__FILE__)
vendors = File::join cwd, 'vendor/*/lib'

vendors.each do |path|
	$LOAD_PATH.push vendor
end

require 'pinocchio'


run Sinatra::Application
