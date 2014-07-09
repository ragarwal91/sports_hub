class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string     :team_name
      t.string     :team_location
      t.references :sport
      t.timestamps
    end
  end
end
