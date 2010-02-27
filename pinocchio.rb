# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'

module Pinocchio
  class Application < Sinatra::Base

    helpers do
      include Rack::Utils
      alias_method :h, :escape_html

      def protected! username, password
        unless authorized? username, password
          response['WWW-Authenticate'] = %(Basic realm="iPortfolio")
          throw(:halt, [401, "Not authorized\n"])
        end
      end

      def authorized? username, password
        @auth ||=  Rack::Auth::Basic::Request.new(request.env)
        @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == [username, password]
      end
		end

		load 'routes/resume.rb'
	end
end
