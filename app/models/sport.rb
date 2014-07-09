class Sport < ActiveRecord::Base
  has_many :teams, dependent: :destroy
  validates :sport_name, :league_name, :league_acronym, presence: true
end
