require 'lol_api/version'
require 'lol_api/client'

module LolApi
  extend SingleForwardable
  def_delegators :client, :configure, :champion_by_id, :champions, :summoner

  def self.client
  	@client ||= Client.new
  end
end
