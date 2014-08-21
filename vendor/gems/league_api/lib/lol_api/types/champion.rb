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

		#Initialize new Champion object
		##
		# @param raw_champion [Hash]
		def initialize(raw_champion)
			@raw_champion = raw_champion
		end
		#The champion's ID
		#
		# @return [Integer]
		def id
			raw_champion['id'].to_i
		end

		# The champion's title
		#
		# @return [String]
		def title
			raw_champion['title']
		end

		# The champion's name
		#
		# @return [String]
		def name
			raw_champion['name']
		end

		# The Champion's Key (Usually same as champion name)
		#
		# @return [String]
		def key 
			raw_champion["key"]
		end

		# Champion stats array
		#
		# @return [Array<LolApi::Stat>] array of LolApi::Stat objects
		def stats
			if raw_stats = raw_champion['stats'].to_a
				raw_stats.map do |stat|
					Stat.new(stat)
				end
			end
		end

		# Champion enemy tips
		#
		# @return [Array<String>] array of strings
		def enemy_tips
			raw_champion["enemytips"]
		end

		# Champion ally tips
		#
		# @return [Array<String>] array of strings
		def ally_tips
			raw_champion["allytips"]
		end

		# Champion blurb (short text)
		#
		# @return [String]
		def blurb
			raw_champion['blurb']
		end

		# Champion lore
		#
		# @return [String]
		def lore
			raw_champion['lore']
		end

		# Champion partype(spell resource type)
		#
		# @return [String]
		def par_type
			raw_champion['partype']
		end

		# Champion tags 
		# 
		# @return [Array<String>] array of strings
		def tags
			raw_champion['tags']
		end

		# Champion image
		#
		# @return [LolApi::Image] 
		def image
			Image.new(raw_champion['image']) if raw_champion['image']
		end

		# Champion info
		#
		# @return [LolApi::Info]
		def info
			Info.new(raw_champion['info']) if raw_champion['info']
		end

		# Champion's passive
		#
		# @return [LolApi::Passive]
		def passive
			Passive.new(raw_champion['passive']) if raw_champion['passive']
		end

		# Champion's spells
		#
		# @return [Array<LolApi::Spell>] array of LolApi::Spell
		def spells
			if spells = raw_champion['spells']
				spells.map do |spell|
					Spell.new(spell)
				end
			end
		end

		# Recommended Items for champion
		# 
		# @return [Array<LolApi::Item>] array of LolApi::Item
		def recommended
			if recommended = raw_champion['recommended'] 
				recommended.map do |item|
					Recommended.new(item) 
				end
			end
		end

		# Available champion skins
		#
		# @return [Array<LolApi::Skin>] array of LoLApi::Skin
		def skins
			if skins = raw_champion['skins']
				skins.map do |item|
					Skin.new(item)
				end
			end
		end
		
	end
end