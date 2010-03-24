require 'rubygems'
require 'rack'
require 'sinatra'

require 'pinocchio'

cwd     = File::dirname(__FILE__)
vendors = File::join cwd, 'vendor/*/lib'

vendors.each do |path|
	$LOAD_PATH.push vendor
end

run Sinatra::Application
