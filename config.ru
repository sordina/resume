require 'rack'

cwd     = File::dirname(__FILE__)
vendors = Dir[File::join cwd, 'vendor/*/lib']

vendors.each do |path|
	$LOAD_PATH.push path
end

require 'pinocchio'

run Sinatra::Application
