
module LolApi
	class SummonerMasteries
		attr_reader :raw_masteries

		def initialize(raw_masteries)
			@raw_masteries = raw_masteries
		end

		def pages
			if pages = raw_masteries['pages']
				pages.map do |page|
					MasteryPage.new(page)
				end
			end
		end

		def summoner_id
			raw_masteries['summonerId']
		end
	end

	class MasteryPage
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

		def masteries
			if masteries = raw_page['masteries']
				masteries.map do |mastery|
					MasteryItem.new(mastery)
				end
			end
		end

		def name 
			raw_page['name']
		end
	end

	class MasteryItem
		attr_reader :raw_item

		def initialize(raw_item)
			@raw_item = raw_item
		end

		def id 
			raw_item['id']
		end

		def rank
			raw_item['rank']
		end
	end
end