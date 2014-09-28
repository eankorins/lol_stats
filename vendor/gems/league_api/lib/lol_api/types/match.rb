require 'lol_api/types/dtos/team'
require 'lol_api/types/dtos/timeline'
require 'lol_api/types/history_match'

module LolApi
	class Match < HistoryMatch
		def match_type
			raw_match['matchType']
		end

		def match_mode
			raw_match['matchMode']
		end

		def teams
			if teams = raw_match['teams']
				teams.map { |e| Team.new(e) }
			end
		end

		def timeline
			Timeline.new(raw_match['timeline'])
		end
	end
end

