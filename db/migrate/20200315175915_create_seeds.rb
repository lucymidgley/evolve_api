class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.references :game, null: false, foreign_key: true
      t.text :seed

      t.timestamps
    end
  end
end
