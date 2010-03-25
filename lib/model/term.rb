class Term
	include DataMapper::Resource

	def self.stem word
		word.gsub(/\W/, '').downcase
	end

	property :id, Serial
	property :name, String, :required => true, :unique_index => true
	property :search, String, :required => true, :index => true, :default => lambda {|item, prop| Term.stem item.name}

	has n, :definitions, :through => Resource
end
