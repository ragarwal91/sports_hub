Sport.destroy_all
Team.destroy_all
User.destroy_all
# mlb = Sport.create(
#     sport_name: "Baseball",
#     league_name: "Major League Baseball",
#     league_acronym: "MLB"
#   )
#
# nba = Sport.create(
#     sport_name: "Basketball",
#     league_name: "National Basketball Association",
#     league_acronym: "NBA"
#   )
#
# nfl = Sport.create(
#     sport_name: "Football",
#     league_name: "National Football League",
#     league_acronym: "NFL"
#   )
#
# nhl = Sport.create(
#     sport_name: "Hockey",
#     league_name: "National Hockey League",
#     league_acronym: "NHL"
#   )
#
# mlb.teams.push(
#   nyy = Team.create(
#     team_name: "New York Yankees",
#     team_location: "New York"
#   ),
#   brs = Team.create(
#     team_name: "Boston Red Sox",
#     team_location: "Boston"
#   )
# )
#
# nba.teams.push(
#   nyk = Team.create(
#     team_name: "New York Knicks",
#     team_location: "New York"
#   )
# )
#
# nfl.teams.push(
#   nyy = Team.create(
#     team_name: "New York Jets",
#     team_location: "New York"
#   )
# )
#
# nhl.teams.push(
#   nyy = Team.create(
#     team_name: "New York Rangers",
#     team_location: "New York"
#   )
# )
#
testuser = User.create(
    username: "sportshub",
    first_name: "Sports",
    last_name: "Hub",
    email_address: "ragarwal91@gmail.com",
    password: "test123"
)

ranjan = User.create(
  username: "ranjan",
  first_name: "Ranjan",
  last_name: "Agarwal",
  email_address: "ranjan@ranjandesign.com",
  password: "test123"
)

mlb_info_hash = Espn.mlb_info
mlb = Sport.create(
    sport_name: "Baseball",
    league_name: "Major League Baseball",
    league_acronym: "MLB",
    espn_id: mlb_info_hash[:espn_id]
)

mlb_info_hash[:teams].each do |team|
  mlb.teams.create(
    team_name: "#{team["location"]} #{team["name"]}",
    team_location: team["location"],
    espn_id: team["id"]
  )
end

nba_info_hash = Espn.nba_info
nba = Sport.create(
    sport_name: "Basketball",
    league_name: "National Basketball Association",
    league_acronym: "NBA",
    espn_id: nba_info_hash[:espn_id]
)

nba_info_hash[:teams].each do |team|
  nba.teams.create(
    team_name: "#{team["location"]} #{team["name"]}",
    team_location: team["location"],
    espn_id: team["id"]
  )
end

nfl_info_hash = Espn.nfl_info
nfl = Sport.create(
    sport_name: "Football",
    league_name: "National Football League",
    league_acronym: "NFL",
    espn_id: nfl_info_hash[:espn_id]
)

nfl_info_hash[:teams].each do |team|
  nfl.teams.create(
    team_name: "#{team["location"]} #{team["name"]}",
    team_location: team["location"],
    espn_id: team["id"]
  )
end

nhl_info_hash = Espn.nhl_info
nhl = Sport.create(
    sport_name: "Hockey",
    league_name: "National Hockey League",
    league_acronym: "NHL",
    espn_id: nhl_info_hash[:espn_id]
)

nhl_info_hash[:teams].each do |team|
  nhl.teams.create(
    team_name: "#{team["location"]} #{team["name"]}",
    team_location: team["location"],
    espn_id: team["id"]
  )
end
