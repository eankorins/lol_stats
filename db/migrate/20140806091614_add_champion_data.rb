class AddChampionData < ActiveRecord::Migration
  def change
  	add_column :champions, :title, :string
  	add_column :champions, :key, :string
  end
end
