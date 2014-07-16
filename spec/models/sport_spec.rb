require 'rails_helper'

describe Sport do
  let(:baseball) {Sport.create(
    sport_name: "baseball",
    league_name: "Major League Baseball",
    league_acronym: "MLB"
    )}
    it {is_expected.to validate_presence_of :sport_name}
    it {is_expected.to validate_presence_of :league_name}
    it {is_expected.to validate_presence_of :league_acronym}
    it {is_expected.to have_db_column :espn_id}
end
