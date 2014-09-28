module LolApi
		class Team
		attr_reader :raw_team

		def initialize(raw_team)
			@raw_team = raw_team
		end
		 def bans
		 	raw_team['bans']
		 end

		 def baron_kills
		 	raw_team['baronKills']
		 end

		 def dragon_kills
		 	raw_team['dragonKills']
		 end

		 def first_baron
		 	raw_team['firstBaron']
		 end

		 def first_blood
		 	raw_team['firstBlood']
		 end

		 def first_inhibitor
		 	raw_team['firstInhibitor']
		 end

		 def first_tower
		 	raw_team['firstTower']
		 end

		 def inhibitor_kills
		 	raw_team['inhibitorKills']
		 end

		 def team_id
		 	raw_team['teamId']
		 end

		 def tower_kills
		 	raw_team['towerKills']
		 end

		 def vilemaw_kills
		 	raw_team['vilemawKills']
		 end

		 def winner
		 	raw_team['winner']
		 end

	end
end