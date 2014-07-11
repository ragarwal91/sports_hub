require 'httparty'
class Team < ActiveRecord::Base
  belongs_to :sport
end
