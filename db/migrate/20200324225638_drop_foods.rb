class DropFoods < ActiveRecord::Migration[6.0]
  def change
    drop_table :foods do |t|
        t.string :name
        t.integer :energy
  
        t.timestamps
    end
  end
end
