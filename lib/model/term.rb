class Term
	include DataMapper::Resource

	property :id, Serial
	property :name, String, :required => true

	has n, :definitions, :through => Resource
end
