class Definition
	include DataMapper::Resource

	property :id, Serial
	property :text, String, :required => true
end
