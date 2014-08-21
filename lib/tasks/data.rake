namespace :db do
	desc "Fill db with data"
	task get_champions: :environment do
		champs = LolApi.champions

		champs.each do |champ|
			Champion.create(name: champ.name, 
							champ_id: champ.id, 
							title: champ.title, 
							key: champ.key,
							enemy_tips: champ.enemy_tips,
							ally_tips: champ.ally_tips,
							blurb: champ.blurb,
							lore: champ.lore,
							par_type: champ.par_type)
		end
	end
	task get_details: :environment do
		champs = Champion.all
		champs.each	do |champ|
			data = LolApi.champion_by_id(champ.champ_id, champData: "stats")
			stats = data.stats
			stats.each	do |stat|
				champ.stats.create(name: stat.name, value: stat.value)
			end
		end
	end

end