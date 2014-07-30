require 'lol_api/utils/inspectable'
require 'lol_api/types/dtos/stat'
require 'lol_api/types/dtos/info'
require 'lol_api/types/dtos/passive'
require 'lol_api/types/dtos/recommended'
require 'lol_api/types/dtos/skin'
require 'lol_api/types/dtos/spell'
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
		def key 
			raw_champion["key"]
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

		def ally_tips
			raw_champion["allytips"]
		end

		def blurb
			raw_champion['blurb']
		end

		def lore
			raw_champion['lore']
		end

		def partype
			raw_champion['partype']
		end

		def tags
			raw_champion['tags']
		end

		def image
			Image.new(raw_champion['image']) if raw_champion['image']
		end

		def info
			Info.new(raw_champion['info']) if raw_champion['info']
		end

		def passive
			Passive.new(raw_champion['passive']) if raw_champion['passive']
		end

		def spells
			raw_champion['spells']
		end

		def recommended
			if recommended = raw_champion['recommended'] 
				recommended.map do |item|
					Recommended.new(item) 
				end
			end
		end

		def skins
			if skins = raw_champion['skins']
				skins.map do |item|
					Skin.new(item)
				end
			end
		end
		
	end
end