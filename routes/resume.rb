helpers do
	def h string
		CGI::escapeHTML string
	end

	def k string
		# Knowledge.search string
		"<a href='/search/#{h string}'>#{h string}</a>"
	end

	def search
	end
end

before do
	@javascript ||= []
	@javascript << '/javascript/jquery-1.4.2.min.js'
	@javascript << '/javascript/lipsum.js'
	@css ||= []
end

get '/' do
	haml :"resume/index"
end

get '/search/*' do
	@term = params[:term] || params[:splat][0]
	@javascript << '/javascript/search.js'
	@css << '/css/search.css'
	haml :"resume/search"
end

get '/browse' do
	haml :"resume/browse"
end

get '/browse/:path' do
	haml :"resume/browse"
end
