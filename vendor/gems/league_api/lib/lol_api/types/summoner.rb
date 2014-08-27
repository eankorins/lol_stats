
module LolApi
	class Summoner
		attr_reader :raw_summoner

		def initialize(raw_summoner)
			@raw_summoner = raw_summoner
		end

		def id
			raw_summoner['id']
		end
		def name 
			raw_summoner['name']
		end
		def profile_icon_id
			raw_summoner['profileIconId']
		end
		def revision_date
			raw_summoner['revisionDate']
		end
		def level
			raw_summoner['summonerLevel']
		end
	end
end