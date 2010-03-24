helpers do
	def h string
		CGI::escapeHTML string
	end

	def k string
		# Knowledge.search string
		"<a href='/search/#{h string}'>#{h string}</a>"
	end
end

get '/' do
	haml :"resume/index"
end
