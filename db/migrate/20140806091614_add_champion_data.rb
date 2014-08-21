class AddChampionData < ActiveRecord::Migration
  def change
  	add_column :champions, :title, :string
  	add_column :champions, :key, :string
  	add_column :champions, :enemy_tips, :string
  	add_column :champions, :ally_tips, :string
  	add_column :champions, :blurb, :string
  	add_column :champions, :lore, :string
  	add_column :champions, :par_type, :string
  end
end
