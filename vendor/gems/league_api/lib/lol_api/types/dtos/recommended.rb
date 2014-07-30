
module LolApi
	class Recommended
		attr_reader :raw_recommended

		def initialize(raw_recommended)
			@raw_recommended = raw_recommended
		end

		def blocks
			raw_recommended['blocks']
		end
		
		def champion 
			raw_recommended['champion']
		end

		def map
			raw_recommended['map']
		end

		def mode 
			raw_recommended['mode']
		end

		def priority
			raw_recommended['priority']
		end

		def title
			raw_recommended['title']
		end

		def type 
			raw_recommended['type']
		end
	end
end