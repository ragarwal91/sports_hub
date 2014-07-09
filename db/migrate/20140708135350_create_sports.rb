class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :league_name
      t.string :league_name_short
      t.timestamps
    end
  end
end
