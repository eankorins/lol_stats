require 'lol_api/utils/inspectable'
module LolApi
	class Info
		include Utils::Inspectable
		attr_reader :raw_info

		def initialize(raw_info)
			@raw_info = raw_info
		end

		def attack
			raw_info['info']
		end

		def defense
			raw_info['defense']
		end
		def difficulty
			raw_info['difficulty']
		end 
		def magic 
			raw_info['magic']
		end
	end
end