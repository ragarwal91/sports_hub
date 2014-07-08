class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string     :team_name
      t.string     :team_location
      t.string     :player
      t.string     :news
      t.string     :box_score
      t.string     :standing
      t.references :sport
      t.timestamps
    end
  end
end
