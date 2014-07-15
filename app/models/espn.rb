class Espn < ActiveRecord::Base

  # Get ESPN ID from API
  def self.mlb_info
    espn_key = ENV["ESPN_API_KEY"]
    url = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams']
    return info
  end

  def self.nba_info
    espn_key = ENV["ESPN_API_KEY"]
    url = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams']
    return info
  end

  def self.nfl_info
    espn_key = ENV["ESPN_API_KEY"]
    url = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams']
    return info
  end

  def self.nhl_info
    espn_key = ENV["ESPN_API_KEY"]
    url = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams']
    return info
  end

  # Get Team info from API
  def self.mlb_team_info(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{espn_id}?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['sports'].first['leagues'].first['teams'].first
    sleep(1)
    return response
  end

  def self.nba_team_info(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams/#{espn_id}?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['sports'].first['leagues'].first['teams'].first
    sleep(1)
    return response
  end

  def self.nfl_team_info(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams/#{espn_id}?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['sports'].first['leagues'].first['teams'].first
    sleep(1)
    return response
  end

  def self.nhl_team_info(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams/#{espn_id}?enable=venues&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['sports'].first['leagues'].first['teams'].first
    sleep(1)
    return response
  end

  # Get teams news from API
  def self.mlb_team_news(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{espn_id}/news?limit=3&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nba_team_news(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams/#{espn_id}/news?limit=3&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nfl_team_news(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams/#{espn_id}/news?limit=3&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nhl_team_news(espn_id)
    espn_key = ENV["ESPN_API_KEY"]
    url_response = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams/#{espn_id}/news?limit=3&apikey=#{espn_key}")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

end
