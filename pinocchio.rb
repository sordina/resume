#!/usr/bin/env ruby

### General application dependencies
#
require 'lib/environment'

### Sinatra-Application specific dependencies
#
require 'sinatra'
require 'haml'
require 'sass'

### Set up the application
#

### Sinatra::Base applications need options set explicitly.
#
# See: http://www.sinatrarb.com/configuration.html
#
enable  :run, :show_errors, :static, :logging, :method_override, :clean_trace
disable :raise_errors

set :app_file, __FILE__
set :public,  'public'
set :views,   'views'

error do
	halt 500, "Oops an error!"
end

not_found do
	halt 404, "Oops no such file!"
end

get '/css/:name.css' do
	sass :"css/#{name}"
end

load 'routes/resume.rb'
