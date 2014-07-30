require 'lol_api/configuration'
require 'lol_api/connection'

require 'lol_api/types/champion'
module LolApi
	class Client
		attr_reader :config
		
		def initialize(options = {})
			@config = Configuration.new(options)
		end
		def configure
			yield config
		end
		def connection
      		@connection ||= Connection.new
    	end
    	def champions(options ={})
    		response = run_request('champion', options, 'static-data', 'euw', '', 'v1.2')

    		if response && (champions = response["data"])
    			champions.map do | champ |
    				Champion.new(champ[1])
    			end
    		end
    	end
		def champion_by_id(id, options = {})
			response = run_request('champion', options, 'static-data', 'euw', id.to_s, 'v1.2')
			Champion.new(response) if response["id"]
		end

		def run_request(method, options = {}, interface='static-data' , region = 'euw', id = '', version = 'v1.2')
			url = "https://global.api.pvp.net/api/lol/#{interface}/#{region}/#{version}/#{method}/#{id}"
			connection.request(:get, url, options.merge(api_key: config.api_key))
		end
	end
end