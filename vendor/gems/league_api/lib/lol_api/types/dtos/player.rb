module LolApi
	class Player
		attr_reader :raw_player

		def initialize(raw_player)
			@raw_player = raw_player
		end

		def match_history_uri
			raw_player['matchHistoryUri']
		end

		def profile_icon
			raw_player['profileIcon']
		end

		def summoner_name
			raw_player['summonerName']
		end
		
	end
end