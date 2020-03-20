class CreateGameSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :game_saves do |t|
      t.references :game, null: false, foreign_key: true
      t.text :save_text
      
      t.timestamps
    end
  end
end
