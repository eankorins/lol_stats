require 'lol_api/types/dtos/image'


module LolApi
	class Spell
		attr_reader :raw_spell

		def initialize(raw_spell)
			@raw_spell = raw_spell
		end

		def alt_images
			if images = raw_spell['altimages']
				images.map do |item|
					Image.new(item)
				end
			end
		end

		def cooldown
			raw_spell['cooldown']
		end

		def cooldown_burn
			raw_spell['cooldownBurn']
		end

		def cost
			raw_spell['cost']
		end

		def cost_burn 
			raw_spell['costBurn']
		end

		def cost_type
			raw_spell['costType']
		end

		def description
			raw_spell['description']
		end

		def effect
			raw_spell['effect']
		end

		def effect_burn
			raw_spell['effectBurn']
		end

		def image
			Image.new(raw_spell['image']) if raw_spell['image']
		end

		def key
			raw_spell['key']
		end

		def level_tip
			raw_spell['leveltip']
		end

		def max_rank
			raw_spell['max_rank']
		end
		def name
			raw_spell['name']
		end

		def range 
			raw_spell['range']
		end

		def range_burn
			raw_spell['rangeBurn']
		end
		def resource
			raw_spell['resource']
		end

		def sanitized_description
			raw_spell['sanitized_description']
		end

		def sanitized_tooltip
			raw_spell['sanitized_tooltip']
		end

		def tooltip
			raw_spell['tooltip']
		end

		def vars
			raw_spell['vars']
		end
	end
end