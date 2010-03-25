### Required vendor paths
#
vendors.each do |path|
	$LOAD_PATH.push path
end

### System gems
#
require 'rubygems'
require 'rack'
require 'sinatra'
require 'haml'
require 'sass'
require 'flickr_fu'
require 'cgi'
require 'pp'

### Applicaiton gems
#
require 'lib/database'

Dir['lib/model/*'].each do |model_path|
	require model_path
end

### Flickr
#
FlickrAPI = Flickr.new 'config/flickr/flickr.yml'
