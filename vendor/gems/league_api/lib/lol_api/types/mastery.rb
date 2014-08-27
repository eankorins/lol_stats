require 'lol_api/types/dtos/image'

module LolApi 
	class Mastery
		attr_reader :raw_mastery

		def initialize(raw_mastery)
			@raw_mastery = raw_mastery
		end

		def id 
			raw_mastery['id']
		end

		def name 
			raw_mastery['name']
		end

		def description
			raw_mastery['description']
		end

		def sanitized_description
			raw_mastery['sanitizedDescription']
		end

		def image
			Image.new(raw_mastery['image']) if raw_mastery['image']
		end

		def ranks
			raw_mastery['ranks']
		end

		def prereq
			raw_mastery['prereq'].to_i
		end
	end
end