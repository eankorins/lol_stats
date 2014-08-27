require 'lol_api/types/dtos/player'

module LolApi
	class ParticipantIdentity
		attr_reader :raw_identity

		def initialize(raw_identity)
			@raw_identity = raw_identity
		end

		def participant_id
			raw_identity['participantId']
		end

		def player
			Player.new(raw_identity['player']) if raw_identity['player']
		end
	end
end