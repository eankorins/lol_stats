module LolApi
	class SummonerRunes
		attr_reader :raw_runes

		def initialize(raw_runes)
			@raw_runes = raw_runes 
		end

		def pages
			if pages = raw_runes['pages']
				pages.map do |p|
					RunePage.new(p)
				end
			end
		end
		
		def summoner_id
			raw_runes['summonerId']
		end

	end

	class RunePage
		attr_reader :raw_page

		def initialize(raw_page)
			@raw_page = raw_page
		end

		def current 
			raw_page['current']
		end

		def id 
			raw_page['id']
		end

		def name
			raw_page['name']
		end

		def runes
			if runes = raw_page['slots']
				runes.map do |s|
					SlottedRune.new(s)
				end
			end
		end
	end

	class SlottedRune
		attr_reader :raw_rune

		def initialize(raw_rune)
			@raw_rune = raw_rune
		end

		def id 
			raw_rune['runeId']
		end

		def slot_id
			raw_rune['runeSlotId']
		end

	end


end