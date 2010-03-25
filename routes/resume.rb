helpers do
	def h string
		CGI::escapeHTML string
	end

	def k string
		# Knowledge.search string
		"<a href='/search/#{h string}'>#{h string}</a>"
	end
end

before do
	@javascript ||= ['javascript/jquery-1.4.2.min.js']
	@javascript << 'javascript/lipsum.js'
	# @javascript << 'javascript/footer-fix.js'
end

get '/' do
	haml :"resume/index"
end

get '/search' do
	haml :"resume/search"
end

get '/search/:term' do
	haml :"resume/search"
end

get '/browse' do
	haml :"resume/browse"
end

get '/browse/:path' do
	haml :"resume/browse"
end
