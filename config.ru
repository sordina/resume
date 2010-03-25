require 'rack'

cwd     = File::dirname(__FILE__)
vendors = Dir[File::join cwd, 'vendor/*/lib']

require 'pinocchio'

run Sinatra::Application
