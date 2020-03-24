class DropCells < ActiveRecord::Migration[6.0]
  def change
    drop_table :organisms do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :size
      t.float :x_coord
      t.float :y_coord
      t.integer :speed
      t.string :color
      t.integer :perception
      t.integer :energy_efficiency
      t.integer :max_energy
      t.integer :energy_level
      t.integer :max_size
      t.integer :age
      t.integer :reproductive_age
      t.integer :life_span
      t.integer :offspring_capacity
      t.integer :parent_1
      t.integer :parent_2
      t.string :name
      t.boolean :predator
      t.integer :sex

      t.timestamps
    end
  end
end
