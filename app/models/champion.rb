class Champion < ActiveRecord::Base
	has_many :stats
	scope  :by_name, -> { order("champions.name") }
end
