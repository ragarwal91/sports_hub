class CreateEspns < ActiveRecord::Migration
  def change
    create_table :espns do |t|

      t.timestamps
    end
  end
end
