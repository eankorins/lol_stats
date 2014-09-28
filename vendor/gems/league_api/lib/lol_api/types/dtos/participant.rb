module LolApi
	class Participant
		attr_reader :raw_participant

		def initialize(raw_participant)
			@raw_participant = raw_participant
		end

		def masteries
			raw_participant['masteries']
		end

		def champion_id
			raw_participant['championId']
		end

		def runes
			raw_participant['runes']
		end

		def participant_id
			raw_participant['participantId']
		end

		def spell_1
			raw_participant['spell1Id']
		end

		def spell_2
			raw_participant['spell2Id']
		end

		def stats
			ParticipantStats.new(raw_participant['stats'])
		end

		def team_id
			raw_participant['teamId']
		end

		def timeline
			ParticipantTimeline.new(raw_participant['timeline'])
		end
	end

	class ParticipantStats
		attr_reader :raw_stats

		def initialize(raw_stats)
			@raw_stats = raw_stats
		end

		def assists
			raw_stats['assists']
		end
		def champ_level 
			raw_stats['champLevel']
		end
		
		def combat_player_score 
			raw_stats['combatPlayerScore'] || 0
		end
		
		def deaths
			raw_stats['deaths']
		end
		
		def double_kills 
			raw_stats['doubleKills']
		end
		
		def first_blood_assist 
			raw_stats['firstBloodAssist']
		end
		
		def first_blood_kill
			raw_stats['firstBloodKill']
		end

		def first_inhibitor_assist 
			raw_stats['firstInhibitorAssist']
		end
		
		def first_inhibitor_kill 
			raw_stats['firstInhibitorKill']
		end
		
		def first_tower_assist 
			raw_stats['firstTowerAssist']
		end
		
		def first_tower_kill 
			raw_stats['firstTowerKill']
		end
		
		def gold_earned 
			raw_stats['goldEarned']
		end
		
		def gold_spent 
			raw_stats['goldSpent']
		end
		
		def inhibitor_kills 
			raw_stats['inhibitorKills']
		end
		
		def inventory
			items = [
						raw_stats['item0'],
						raw_stats['item1'],
						raw_stats['item2'],
						raw_stats['item3'],
						raw_stats['item4'],
						raw_stats['item5'],
						raw_stats['item6'],
					]
			Inventory.new(items)
		end
		
		def killing_sprees
			raw_stats['killingSprees']
		end
		
		def kills 
			raw_stats['kills']
		end
		
		def largest_crit 
			raw_stats['largestCriticalStrike']
		end
		
		def largest_killing_spree 
			raw_stats['largestKillingSpree']
		end
		
		def largest_multi_kill 
			raw_stats['largestMultiKill']
		end
		
		def magic_damage_dealt 
			raw_stats['magicDamageDealt']
		end
		
		def magic_damage_dealt_to_chanpions 
			raw_stats['magicDamageDealtToChampions']
		end
		
		def magic_damage_taken
			raw_stats['magicDamageTaken']
		end
		
		def minions_killed 
			raw_stats['minionsKilled']
		end
		
		def neutral_minions_killed 
			raw_stats['neutralMinionsKilled']
		end
		
		def netural_minions_killed_enemy_jungle 
			raw_stats['neutralMinionsKilledEnemyJungle']
		end
		
		def netural_minions_killed_team_jungle 
			raw_stats['neutralMinionsKilledTeamJungle']
		end
		
		def node_capture 
			raw_stats['nodeCapture'] || 0
		end
		def node_capture_assist 
			raw_stats['nodeCaptureAssist'] || 0
		end
		
		def node_neutralize 
			raw_stats['nodeNeutralize'] || 0
		end

		def node_neutralize_assist
			raw_stats['nodeNeutralizeAssist'] || 0
		end
		
		def objective_player_score 
			raw_stats['objectivePlayerScore'] || 0
		end
		
		def penta_kills 
			raw_stats['pentaKills']
		end
		
		def physical_damage_dealt 
			raw_stats['physicalDamageDealt']
		end
		
		def physical_damage_dealt_to_champions 
			raw_stats['physicalDamageDealtToChampions']
		end
		
		def physical_damage_taken 
			raw_stats['physicalDamageTaken']
		end
		
		def quadra_kills 
			raw_stats['quadraKills']
		end
		
		def sight_wards_bought 
			raw_stats['sightWardsBoughtInGame']
		end
		
		def team_objective
			raw_stats['teamObjectives'] || 0
		end
		
		def total_damage_dealt 
			raw_stats['totalDamageDealt']
		end
		
		def total_damage_dealt_to_champions 
			raw_stats['totalDamageDealtToChampions']
		end
		
		def total_damage_taken 
			raw_stats['totalDamageTaken']
		end
		
		def total_heal 
			raw_stats['totalHeal']
		end
		
		def total_player_score 
			raw_stats['totalPlayerScore'] || 0
		end
		
		def total_score_rank 
			raw_stats['totalScoreRank'] || 0
		end
		
		def total_time_crowd_control_dealt
			raw_stats['totalTimeCrowdControlDealt']
		end
		
		def total_units_healed 
			raw_stats['totalUnitsHealed']
		end
		
		def tower_kills
			raw_stats['towerKills']
		end
		
		def triple_kills 
			raw_stats['tripleKills']
		end
		
		def true_damage_dealt 
			raw_stats['trueDamageDealt']
		end
		
		def true_damage_dealt_to_champions 
			raw_stats['trueDamageDealtToChampions']
		end
		
		def true_damage_taken 
			raw_stats['trueDamageTaken']
		end
		
		def unreal_kills 
			raw_stats['unrealKills']
		end
		
		def vision_wards_bought 
			raw_stats['visionWardsBoughtInGame']
		end
		
		def wards_killed 
			raw_stats['wardsKilled']
		end
		
		def wards_placed 
			raw_stats['wardsPlaced']
		end
		
		def winner 
			raw_stats['winner']
		end	
	end
	class ParticipantTimeline
		attr_reader :raw_timeline

		def initialize(raw_timeline)
			@raw_timeline = raw_timeline
		end

		def ancient_golem_assists 
			TimelineData.new(raw_timeline['ancientGolemAssistsPerMinCounts'])
		end
		def ancient_golem_kills 
			TimelineData.new(raw_timeline['ancientGolemKillsPerMinCounts'])
		end
		def assisted_lane_deaths_delta 
			TimelineData.new(raw_timeline['assistedLaneDeathsPerMinDeltas'])
		end
		def assisted_lane_kills_delta 
			TimelineData.new(raw_timeline['assistedLaneKillsPerMinDeltas'])
		end
		def baron_assists
			TimelineData.new(raw_timeline['baronAssistsPerMinCounts'])
		end
		def barron_kills 
			TimelineData.new(raw_timeline['baronKillsPerMinCounts'])
		end
		def creeps_delta 
			TimelineData.new(raw_timeline['creepsPerMinDeltas'])
		end
		def creep_diff_delta 
			TimelineData.new(raw_timeline['csDiffPerMinDeltas'])
		end
		def damage_taken_diff_delta 
			TimelineData.new(raw_timeline['damageTakenDiffPerMinDeltas'])
		end
		def damage_take_delta 
			TimelineData.new(raw_timeline['damageTakenPerMinDeltas'])
		end
		def dragon_assists 
			TimelineData.new(raw_timeline['dragonAssistsPerMinCounts'])
		end
		def dragon_kills 
			TimelineData.new(raw_timeline['dragonKillsPerMinCounts'])
		end
		def elder_lizard_assists 
			TimelineData.new(raw_timeline['elderLizardAssistsPerMinCounts'])
		end
		def eler_lizard_kills 
			TimelineData.new(raw_timeline['elderLizardKillsPerMinCounts'])
		end
		def gpm_delta 
			TimelineData.new(raw_timeline['goldPerMinDeltas'])
		end
		def inhibitor_assists 
			TimelineData.new(raw_timeline['inhibitorAssistsPerMinCounts'])
		end
		def inhibitor_kills 
			TimelineData.new(raw_timeline['inhibitorKillsPerMinCounts'])
		end
		def lane 
			raw_timeline['lane']
		end
		def role 
			raw_timeline['role']
		end
		def tower_assists 
			TimelineData.new(raw_timeline['towerAssistsPerMinCounts'])
		end
		def tower_kills 
			TimelineData.new(raw_timeline['towerKillsPerMinCounts'])
		end
		def vilemaw_assists 
			TimelineData.new(raw_timeline['vilemawAssistsPerMinCounts'])
		end
		def vilemaw_kills 
			TimelineData.new(raw_timeline['vilemawKillsPerMinCounts'])
		end
		def wards_delta 
			TimelineData.new(raw_timeline['wardsPerMinDeltas'])
		end
		def xp_diff_delta 
			TimelineData.new(raw_timeline['xpDiffPerMinDeltas'])
		end
		def xp_delta 
			TimelineData.new(raw_timeline['xpPerMinDeltas'])
		end
	end
	class Inventory
		attr_reader :item0, :item1, :item2, :item3, :item4, :item5, :item6
		def initialize(items)
			@item0 = items[0]
			@item1 = items[1]
			@item2 = items[2]
			@item3 = items[3]
			@item4 = items[4]
			@item5 = items[5]
			@item6 = items[6]
		end
	end
	class TimelineData
		attr_reader :raw_data

		def initialize(raw_data)
			@raw_data = raw_data
		end

		def ten_to_twenty
			raw_data['tenToTwenty']
		end

		def thirty_to_end
			raw_data['thirtyToEnd']
		end

		def twenty_to_thirty
			raw_data['twentyToThirty']
		end

		def zero_to_ten
			raw_data['zeroToTen']
		end

		def chart
			[
				:zero_to_ten => zero_to_ten, 
				:ten_to_twenty => ten_to_twenty, 
				:twenty_to_thirty => twenty_to_thirty, 
				:thirty_to_end => thirty_to_end
			]
		end
	end

end