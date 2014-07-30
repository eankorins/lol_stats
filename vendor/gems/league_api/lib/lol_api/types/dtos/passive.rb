require 'lol_api/types/dtos/image'
module LolApi
	class Passive 
		include Utils::Inspectable
		attr_reader :raw_passive

		def initialize(raw_passive)
			@raw_passive = raw_passive
		end

		def description 
			raw_passive['description']
		end

		def image 
			Image.new(raw_passive['image']) if raw_passive['image']
		end

		def name 
			raw_passive['name']
		end

		def sanitizedDescription
			raw_passive['sanitizedDescription']
		end
	end
end