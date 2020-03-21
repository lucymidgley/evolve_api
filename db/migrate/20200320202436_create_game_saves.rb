class CreateGameSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :game_saves, id: false do |t|
      t.integer :game_id, null: false
      t.text :save_text
      
      t.timestamps
    end

    execute %Q{ ALTER TABLE "game_saves" ADD PRIMARY KEY ("game_id"); }
  end
end
