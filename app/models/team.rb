require 'httparty'
class Team < ActiveRecord::Base
  belongs_to :sports
  def self.api()
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/10/news?apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end
end
