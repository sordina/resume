helpers do
	def form_helper
		@css << '/css/forms.css'
		@javascript << '/javascript/autoresize.jquery.min.js'
		@javascript << '/javascript/forms.js'
	end
end
