require 'lol_api/version'
require 'lol_api/client'

module LolApi
  extend SingleForwardable
  def_delegators :client, :configure, :champion_by_id, :champions, :item_by_id, :items, :mastery, :mastery_by_id, :match_history, 
  					:history_by_id

  def self.client
  	@client ||= Client.new
  end
end
