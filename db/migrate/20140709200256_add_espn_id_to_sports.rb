class AddEspnIdToSports < ActiveRecord::Migration
  def change
    add_column :sports, :espn_id, :integer
  end
end
