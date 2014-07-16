class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :teams
  validates :username, :first_name,:email_address, presence: true
  validates :username, :email_address, uniqueness: true

  # Get team news from API
  def self.team_news(url_response)
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.mlb_team_news(team_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{team_id}/news?limit=1&apikey=#{espn_key}")
    self.team_news(url_response)
  end

  def self.nba_team_news(team_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams/#{team_id}/news?limit=1&apikey=#{espn_key}")
    self.team_news(url_response)
  end

  def self.nfl_team_news(team_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams/#{team_id}/news?limit=1&apikey=#{espn_key}")
    self.team_news(url_response)
  end

  def self.nhl_team_news(team_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams/#{team_id}/news?limit=1&apikey=#{espn_key}")
    self.team_news(url_response)
  end

  def self.breaking_news
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/now/?apikey=#{espn_key}")
    response = HTTParty.get(url_response)['feed']
    return response
  end
end
