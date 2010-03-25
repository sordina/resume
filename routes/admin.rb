helpers do
	def admin_helper
		@javascript.delete '/javascript/lipsum.js'
		form_helper
		haml :admin
	end
end

get "/admin" do
	admin_helper
end

post "/admin" do
	admin_helper
end
