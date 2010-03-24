require 'rubygems'
require 'rack'
require 'sinatra'

require 'pinocchio'

cwd    = File::dirname(__FILE__)
vendor = File::join cwd, 'vendor'

$LOAD_PATH.push vendor

run Sinatra::Application
