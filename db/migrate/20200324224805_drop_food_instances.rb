class DropFoodInstances < ActiveRecord::Migration[6.0]
  def change
    drop_table :food_instances do |t|
      t.references :game, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float  :x_coord
      t.float  :y_coord
      t.integer :energy_level
      t.timestamps
    end
  end
end
