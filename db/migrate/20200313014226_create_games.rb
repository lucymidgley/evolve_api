class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :temperature
      t.string :name
      t.string :screen_capture
      t.integer :playtime
      t.integer :highest_score
      t.integer :num_of_orgs

      t.timestamps
    end
  end
end