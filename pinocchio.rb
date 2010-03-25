#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'lib/environment'

enable :method_override, :clean_trace

### Begin Application

set :public,  'public'
set :views,   'views'

### Helpers

Dir['lib/helpers/*.rb'].each do |helper_path|
	load helper_path
end

### Hooks

error Exception do
	haml :error
end

not_found do
	haml :not_found
end

### Routes

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

Dir['routes/*.rb'].each do |route_group_path|
	load route_group_path
end
