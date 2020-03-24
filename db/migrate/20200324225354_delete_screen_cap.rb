class DeleteScreenCap < ActiveRecord::Migration[6.0]
  def change
    change_table :games do |t|
      t.remove :screen_capture
      t.remove :temperature
    end
  end
end
