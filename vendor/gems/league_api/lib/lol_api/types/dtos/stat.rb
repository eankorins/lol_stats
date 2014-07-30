require 'lol_api/utils/inspectable'
module LolApi
	class Stat
		include Utils::Inspectable
		attr_reader :raw_stat

		def initialize(raw_stat)
			@raw_stat = raw_stat
		end

		def name 
			raw_stat[0]
		end

		def value
			raw_stat[1]
		end
	end
end