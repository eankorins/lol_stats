class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :name
      t.float :value
      t.integer :champion_id
      t.timestamps
    end
  end
end
