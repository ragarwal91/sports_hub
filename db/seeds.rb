Sport.destroy_all
Team.destroy_all
User.destroy_all

testuser = User.create(
    username: "sportshub",
    first_name: "Sports",
    last_name: "Hub",
    email_address: "ragarwal91@gmail.com",
    password: "test123",
    baseball_team_id: 1,
    basketball_team_id: 32,
    football_team_id: 64,
    hockey_team_id: 100
)

ranjan = User.create(
  username: "ranjan",
  first_name: "Ranjan",
  last_name: "Agarwal",
  email_address: "ranjan@ranjandesign.com",
  password: "test123",
  baseball_team_id: 1,
  basketball_team_id: 32,
  football_team_id: 64,
  hockey_team_id: 100
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
bo = Team.find(1)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/Baltimore_Orioles_Logo.svg.png"
)

bo = Team.find(2)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/359px-RedSoxPrimary_HangingSocks.svg.png"
)

bo = Team.find(3)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/187px-Los_Angeles_Angels_of_Anaheim.svg.png"
)

bo = Team.find(4)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/181px-Chicago_White_Sox.svg.png"
)

bo = Team.find(5)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/200px-Cleveland_Indians_logo.svg.png"
)

bo = Team.find(6)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Detroit_tigers_textlogo.svg.png"
)

bo = Team.find(7)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Kansas_City_Royals.svg.png"
)

bo = Team.find(8)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/176px-Milwaukee_Brewers_Logo.svg.png"
)

bo = Team.find(9)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/400px-Minnesota_Twins_Logo.svg.png"
)

bo = Team.find(10)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/300px-NewYorkYankees_PrimaryLogo.svg.png"
)

bo = Team.find(11)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Oakland_athl_primlogo.svg.png"
)

bo = Team.find(12)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/Seattle_Mariners_logo.svg.png"
)

bo = Team.find(13)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Texas_Rangers.svg.png"
)

bo = Team.find(14)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Toronto_Blue_Jays.svg.png"
)

bo = Team.find(15)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Atlanta_Braves.svg.png"
)

bo = Team.find(16)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-Chicago_Cubs_Logo.svg.png"
)

bo = Team.find(17)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-Cincinnati_Reds_Logo.svg.png"
)

bo = Team.find(18)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-Houston_Astros_Logo.svg.png"
)

bo = Team.find(19)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/Los_Angeles_Dodgers_Logo.png"
)

bo = Team.find(20)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Washington-Nationals-Logo.svg.png"
)

bo = Team.find(21)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-New_York_Mets.svg.png"
)

bo = Team.find(22)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Philadelphia_Phillies.svg.png"
)

bo = Team.find(23)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-Pittsburgh_Pirates_MLB_Logo.svg.png"
)

bo = Team.find(24)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-St._Louis_Cardinals_Logo.svg.png"
)

bo = Team.find(25)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/San_Diego_Padres_logo.svg.png"
)

bo = Team.find(26)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/216px-San_Francisco_Giants_Logo.svg.png"
)

bo = Team.find(27)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/234px-Colorado_Rockies_logo.svg.png"
)

bo = Team.find(28)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/MiamiMarlins.svg.png"
)

bo = Team.find(29)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/201px-Arizona_Diamondbacks_Logo.svg.png"
)

bo = Team.find(30)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/mlb/250px-Tampa_Bay_Rays.svg.png"
)

bo = Team.find(31)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/1.png"
)

bo = Team.find(32)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/2.png"
)

bo = Team.find(33)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/3.png"
)

bo = Team.find(34)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/4.png"
)

bo = Team.find(35)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/5.png"
)

bo = Team.find(36)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/6.png"
)

bo = Team.find(37)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/7.png"
)

bo = Team.find(38)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/8.png"
)

bo = Team.find(39)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/9.png"
)

bo = Team.find(40)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/10.png"
)

bo = Team.find(41)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/11.png"
)

bo = Team.find(42)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/12.png"
)

bo = Team.find(43)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/13.png"
)

bo = Team.find(44)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/14.png"
)

bo = Team.find(45)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/15.png"
)

bo = Team.find(46)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/16.png"
)

bo = Team.find(47)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/17.png"
)

bo = Team.find(48)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/18.png"
)

bo = Team.find(49)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/19.png"
)

bo = Team.find(50)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/20.png"
)

bo = Team.find(51)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/21.png"
)

bo = Team.find(52)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/22.png"
)

bo = Team.find(53)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/23.png"
)

bo = Team.find(54)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/24.png"
)

bo = Team.find(55)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/25.png"
)

bo = Team.find(56)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/26.png"
)

bo = Team.find(57)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/27.png"
)

bo = Team.find(58)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/28.png"
)

bo = Team.find(59)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/29.png"
)

bo = Team.find(60)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nba/30.png"
)

bo = Team.find(61)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/1.png"
)

bo = Team.find(62)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/2.png"
)

bo = Team.find(63)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/3.png"
)

bo = Team.find(64)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/4.png"
)

bo = Team.find(65)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/5.png"
)

bo = Team.find(66)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/6.png"
)

bo = Team.find(67)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/7.png"
)

bo = Team.find(68)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/8.png"
)

bo = Team.find(69)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/9.png"
)

bo = Team.find(70)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/10.png"
)

bo = Team.find(71)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/11.png"
)

bo = Team.find(72)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/12.png"
)

bo = Team.find(73)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/13.png"
)

bo = Team.find(74)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/14.png"
)

bo = Team.find(75)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/15.png"
)

bo = Team.find(76)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/16.png"
)

bo = Team.find(77)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/17.png"
)

bo = Team.find(78)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/18.png"
)

bo = Team.find(79)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/19.png"
)

bo = Team.find(80)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/20.png"
)

bo = Team.find(81)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/21.png"
)

bo = Team.find(82)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/22.png"
)

bo = Team.find(83)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/23.png"
)

bo = Team.find(84)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/24.png"
)

bo = Team.find(85)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/25.png"
)

bo = Team.find(86)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/26.png"
)

bo = Team.find(87)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/27.png"
)

bo = Team.find(88)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/28.png"
)

bo = Team.find(89)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/29.png"
)

bo = Team.find(90)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/30.png"
)

bo = Team.find(91)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/31.png"
)

bo = Team.find(92)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nfl/32.png"
)

bo = Team.find(93)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/1.png"
)

bo = Team.find(94)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/2.png"
)

bo = Team.find(95)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/3.png"
)

bo = Team.find(96)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/4.png"
)

bo = Team.find(97)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/5.png"
)

bo = Team.find(98)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/6.png"
)

bo = Team.find(99)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/7.png"
)

bo = Team.find(100)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/8.png"
)

bo = Team.find(101)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/9.png"
)

bo = Team.find(102)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/10.png"
)

bo = Team.find(103)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/11.png"
)

bo = Team.find(104)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/12.png"
)

bo = Team.find(105)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/13.png"
)

bo = Team.find(106)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/14.png"
)

bo = Team.find(107)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/15.png"
)

bo = Team.find(108)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/16.png"
)

bo = Team.find(109)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/17.png"
)

bo = Team.find(110)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/18.png"
)

bo = Team.find(111)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/19.png"
)

bo = Team.find(112)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/20.png"
)

bo = Team.find(113)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/21.png"
)

bo = Team.find(114)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/22.png"
)

bo = Team.find(115)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/23.png"
)

bo = Team.find(116)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/24.png"
)

bo = Team.find(117)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/25.png"
)

bo = Team.find(118)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/26.png"
)

bo = Team.find(119)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/27.png"
)

bo = Team.find(120)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/28.png"
)

bo = Team.find(121)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/29.png"
)

bo = Team.find(122)
bo.update(
  logo: "https://dl.dropboxusercontent.com/u/54485160/GA-Project-1/nhl/30.png"
)
