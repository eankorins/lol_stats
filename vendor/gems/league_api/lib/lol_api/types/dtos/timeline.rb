module LolApi
	class Timeline
		attr_reader :raw_timeline

		def initialize(raw_timeline)
			@raw_timeline = raw_timeline
		end

		def interval
			@raw_timeline['frameInterval']
		end

		def frames
			if frames = @raw_timeline['frames']
				frames.map { |x| Frame.new(x) }
			end
		end
	end

	class Frame
		attr_reader :raw_frame

		def initialize(raw_frame)
			@raw_frame = raw_frame
		end

		def events 
			if events = @raw_frame['events']
				events.map { |x| Event.new(x) }
			end
		end

		def participant_frames 
			if frames = @raw_frame['participantFrames']
				frames.map{|x| ParticipantFrame.new(x)}
			end
		end

		def timestamp 
			@raw_frame['timestamp']
		end
	end

	class Event
		attr_reader :raw_event

		def initialize(raw_event)
			@raw_event = raw_event
		end

		def assisting_participant_ids
			raw_event['assisting_participant_ids']
		end

		def building_type
			raw_event['building_type']
		end

		def creator_id
			raw_event['creator_id']
		end

		def event_type
			raw_event['event_type']
		end

		def item_after
			raw_event['item_after']
		end

		def item_before
			raw_event['item_before']
		end

		def item_id
			raw_event['item_id']
		end

		def killer_id
			raw_event['killer_id']
		end

		def lane_type
			raw_event['lane_type']
		end

		def level_up_type
			raw_event['level_up_type']
		end

		def monster_type
			raw_event['monster_type']
		end

		def participant_id
			raw_event['participant_id']
		end

		def position
			raw_event['position']
		end

		def skill_slot
			raw_event['skill_slot']
		end

		def team_id
			raw_event['team_id']
		end

		def timestamp
			raw_event['timestamp']
		end

		def tower_type
			raw_event['tower_type']
		end

		def victim_id
			raw_event['victim_id']
		end

		def ward_type
			raw_event['ward_type']
		end
	end

	class ParticipantFrame
		attr_reader :raw_frame

		def initialize(raw_frame)
			@raw_frame = raw_frame
		end

		def current_gold
			@raw_frame['currentGold']
		end

		def jungle_minions_killed
			@raw_frame['jungleMinionsKilled']
		end

		def level
			@raw_frame['level']
		end

		def minions_killed
			@raw_frame['minionsKilled']
		end

		def participant_id
			@raw_frame['participantId']
		end

		def position
			Position.new(@raw_frame['position'])
		end

		def total_gold
			@raw_frame['totalGold']
		end

		def xp
			@raw_frame['xp']
		end
	end

	class Position

		def initialize(raw_pos)
			@x = raw_pos['x']
			@y = raw_pos['y']
		end
	end

end