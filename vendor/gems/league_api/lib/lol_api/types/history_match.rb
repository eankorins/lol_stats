require 'lol_api/types/dtos/participant_identity'

module LolApi
	class HistoryMatch
		attr_reader :raw_match

		def initialize(raw_match)
			@raw_match = raw_match
		end

		def map_id
			raw_match['mapId']
		end

		def match_creation
			raw_match['matchCreation']
		end

		def match_duration
			raw_match['matchDuration']
		end

		def match_id
			raw_match['matchId']
		end

		def match_version
			raw_match['matchVersion']
		end

		def participant_identities
			if participants = raw_match['participantIdentities']
				participants.map do |participant|
					ParticipantIdentity.new(participant) 
				end
			end
		end

		def participants
			raw_match['participants']
		end

		def queue_type
			raw_match['queueType']
		end

		def region
			raw_match['region']
		end

		def season
			raw_match['season']
		end

	end
end