class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :teams
  validates :username, :first_name,:email_address, presence: true
  validates :username, :email_address, uniqueness: true
  # validates length_of :password_digest, minimum: 6

  def self.mlb_team_news(team_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{team_id}/news?limit=1&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nba_team_news(team_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams/#{team_id}/news?limit=1&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nfl_team_news(team_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams/#{team_id}/news?limit=1&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nhl_team_news(team_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams/#{team_id}/news?limit=1&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end
end
