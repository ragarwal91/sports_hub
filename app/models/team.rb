require 'httparty'
class Team < ActiveRecord::Base
  belongs_to :sport
  has_many :comments
end
