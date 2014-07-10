class Espn < ActiveRecord::Base
  # def self.api(espn_id)
  #   url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{espn_id}/news?limit=5&apikey=w92t52cvsppdst5du4x5av4m")
  #   response = HTTParty.get(url_response)['headlines']
  #   return response
  # end

  def self.mlb_info
    url = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams?enable=venues&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams']
    return info
  end

  def self.nba_info
    url = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams?enable=venues&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams'].first
    return info
  end

  def self.nfl_info
    url = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams?enable=venues&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams'].first
    return info
  end

  def self.nhl_info
    url = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams?enable=venues&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url)
    info = {}
    info[:espn_id] = response['sports'].first['leagues'].first['id']
    info[:teams] = response['sports'].first['leagues'].first['teams'].first
    return info
  end

  def self.mlb_team_info(espn_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{espn_id}?enable=venues&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['sports'].first['leagues'].first['teams'].first
    return response
  end

  def self.mlb_team_news(espn_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/baseball/mlb/teams/#{espn_id}/news?limit=3&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nba_team_news(espn_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/basketball/nba/teams/#{espn_id}/news?limit=3&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nfl_team_news(espn_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/football/nfl/teams/#{espn_id}/news?limit=3&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

  def self.nhl_team_news(espn_id)
    url_response = URI.escape("http://api.espn.com/v1/sports/hockey/nhl/teams/#{espn_id}/news?limit=3&apikey=w92t52cvsppdst5du4x5av4m")
    response = HTTParty.get(url_response)['headlines']
    return response
  end

end
