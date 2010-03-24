### System gems
#
require 'rubygems'
require 'rack'
require 'sinatra'
require 'haml'
require 'sass'
require 'vendor/flickr_fu-0.3.0/lib/flickr_fu.rb'

### Applicaiton gems
#
require 'lib/database'

### Flickr
#
FlickrAPI = Flickr.new 'config/flickr/flickr.yml'
