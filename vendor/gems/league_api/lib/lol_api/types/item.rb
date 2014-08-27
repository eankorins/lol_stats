
module LolApi
	class Item
		attr_reader :raw_item

		def initialize(raw_item)
			@raw_item = raw_item
		end

		def id
			raw_item['id']
		end

		def name
			raw_item['name']
		end

		def plain_text
			raw_item['plaintext']
		end

		def colloq 
			raw_item['colloq']
		end

		def consume_on_full
			raw_item['consumeOnFull']
		end

		def consumed
			raw_item['consumed']
		end

		def depth
			raw_item['depth']
		end

		def description
			raw_item['description']
		end

		def from
			raw_item['from']
		end

		def gold
			raw_item['gold']
		end

		def group
			raw_item['group']
		end

		def hide_from_all
			raw_item['hideFromAll']
		end

		def image
			raw_item['image']
		end

		def in_store 
			raw_item['inStore']
		end

		def into
			raw_item['into']
		end

		def maps
			raw_item['maps']
		end

		def required_champion
			raw_item['requiredChampion']
		end

		def rune
			raw_item['rune']
		end

		def sanitized_description
			raw_item['sanitizedDescription']
		end

		def special_recipe
			raw_item['specialRecipe']
		end

		def stacks
			raw_item['stacks']
		end

		def stats
			raw_item['stats']
		end

		def tags
			raw_item['tags']
		end
	end
end