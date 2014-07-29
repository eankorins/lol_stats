require 'lol_api/utils/inspectable'

module LolApi
	class Champion
		include Utils::Inspectable
		attr_reader :raw_champion

		def initialize(raw_champion)
			@raw_champion = raw_champion
		end

		def id
			raw_champion['id'].to_i
		end

		def title
			raw_champion['title']
		end
		def name
			raw_champion['name']
		end
		def stats
			if raw_stats = raw_champion['stats'].to_a
				raw_stats.map do |stat|
					Stat.new(stat)
				end
			end
		end

		def enemy_tips
			raw_champion["enemytips"]
		end
	end

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