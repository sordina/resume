#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'lib/environment'

enable :method_override, :clean_trace

### Begin Application

set :public,  'public'
set :views,   'views'

mime_type :css, 'text/css'
mime_type :js,  'text/javascript'

error Exception do
	haml :error
end

not_found do
	haml :not_found
end

get '/css/site_images.css' do
	@images = FlickrAPI.photos.search(
		:media => 'photo',
		:per_page => 4,
		:content_type => 1,
		:safe_search => 1,
		:is_commons => true
	)
	content_type :css
	erb :"css/site_images"
end

get '/css/:name.css' do
	content_type :css
	sass :"css/#{params[:name]}" rescue pass
end

load 'routes/resume.rb'
