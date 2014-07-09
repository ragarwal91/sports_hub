class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :league_name
      t.string :league_acronym
      t.timestamps
    end
  end
end
