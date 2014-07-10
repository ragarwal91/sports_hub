require 'httparty'
class Team < ActiveRecord::Base
  belongs_to :sports
  
end
