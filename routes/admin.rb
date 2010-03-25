helpers do
	def admin_helper
		@javascript.delete '/javascript/lipsum.js'
		@javascript << '/javascript/admin.js'
		@v = {}
		form_helper
		haml :"resume/admin"
	end
end

get "/admin" do
	admin_helper
end

get "/admin/term" do
	query = params[:q]
	limit = (params[:limit] || 10).to_i

	results = Term.all(
		:search.like => Term.stem(query) + '%',
		:order => :name.desc,
		:limit => limit
	)
	
	results.map {|e| e.name }.join "\n"
end

post "/admin" do

	begin
			term = Term.new :name => params[:term]
			term.transaction do |trans|
				definition = Definition.new :text => params[:description]
				definition.save
				term.definitions << definition
				term.save
			end

	rescue DataObjects::IntegrityError => e

		@error = e
		params.each {|k,v| @v[k.to_sym] =  CGI::escapeHTML v}
	end

	admin_helper
end
