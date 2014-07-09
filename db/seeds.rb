Sport.destroy_all
Team.destroy_all
User.destroy_all
mlb = Sport.create(
    sport_name: "Baseball",
    league_name: "Major League Baseball",
    league_acronym: "MLB"
  )

nba = Sport.create(
    sport_name: "Basketball",
    league_name: "National Basketball Association",
    league_acronym: "NBA"
  )

nfl = Sport.create(
    sport_name: "Football",
    league_name: "National Football League",
    league_acronym: "NFL"
  )

nhl = Sport.create(
    sport_name: "Hockey",
    league_name: "National Hockey League",
    league_acronym: "NHL"
  )

mlb.teams.push(
  nyy = Team.create(
    team_name: "New York Yankees",
    team_location: "New York"
  ),
  brs = Team.create(
    team_name: "Boston Red Sox",
    team_location: "Boston"
  )
)

nba.teams.push(
  nyk = Team.create(
    team_name: "New York Knicks",
    team_location: "New York"
  )
)

nfl.teams.push(
  nyy = Team.create(
    team_name: "New York Jets",
    team_location: "New York"
  )
)

nhl.teams.push(
  nyy = Team.create(
    team_name: "New York Rangers",
    team_location: "New York"
  )
)

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
