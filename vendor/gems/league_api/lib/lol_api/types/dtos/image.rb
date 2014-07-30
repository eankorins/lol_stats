require 'lol_api/utils/inspectable'
module LolApi
	class Image
		include Utils::Inspectable
		attr_reader :raw_image

		def initialize(raw_image)
			@raw_image = raw_image
		end

		def full 
			raw_image['full']
		end
		def group
			raw_image['group']
		end
		def height 
			raw_image['h']
		end
		def width
			raw_image['w']
		end
		def x 
			raw_image['x']
		end
		def y 
			raw_image['y']
		end
		def sprite 
			raw_image['sprite']
		end
	end
end