require 'rails_helper'

describe Team do
  it {is_expected.to belong_to :sport}
  it {is_expected.to have_many :comments}
  it {is_expected.to have_db_column :sport_id}
end
