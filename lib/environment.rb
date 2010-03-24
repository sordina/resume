### System gems
#
require 'rubygems'
require 'rack'
require 'sinatra'
require 'haml'
require 'sass'
require 'flickr_fu'

### Applicaiton gems
#
require 'lib/database'

### Flickr
#
FlickrAPI = Flickr.new 'config/flickr/flickr.yml'