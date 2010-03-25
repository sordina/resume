helpers do
	def form_helper
		@css << '/css/forms.css'
		@javascript << '/javascript/autoresize.jquery.min.js'
		@javascript << '/javascript/forms.js'

		# autocomplete
		@css << '/javascript/jquery-autocomplete/jquery.autocomplete.css'
		@javascript << '/javascript/jquery-autocomplete/jquery.autocomplete.min.js'
	end
end
