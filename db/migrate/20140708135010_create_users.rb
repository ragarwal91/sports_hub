class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :username
      t.string     :first_name
      t.string     :last_name
      t.string     :email_address
      t.string     :password_digest
      t.string     :baseball_team_id
      t.string     :basketball_team_id
      t.string     :football_team_id
      t.string     :hockey_team_id
      t.timestamps
    end
  end
end
