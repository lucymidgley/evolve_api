class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :temperature
      t.string :name
      t.string :screen_capture

      t.timestamps
    end
  end
end
