module LolApi
	class Skin
		attr_reader :raw_skin

		def initialize(raw_skin)
			@raw_skin = raw_skin
		end

		def id 
			raw_skin['id']
		end
		def name 
			raw_skin['name']
		end
		def num 
			raw_skin['num']
		end
		
	end
end