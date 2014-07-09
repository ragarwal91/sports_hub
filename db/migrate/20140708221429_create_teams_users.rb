class CreateTeamsUsers < ActiveRecord::Migration
  def change
    create_table :teams_users do |t|
      t.references(:user)
      t.references(:team)
    end
  end
end
