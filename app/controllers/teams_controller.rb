class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to(team_path(@team))
    else
      render(:new)
    end
  end

  def show
    @team = Team.find(params[:id])
    @team_sport = Team.find(@team.sport_id)
    @mlb_team_info = Espn.mlb_team_info(@team.espn_id)
    @nba_team_info = Espn.nba_team_info(@team.espn_id)
    @nfl_team_info = Espn.nfl_team_info(@team.espn_id)
    @nhl_team_info = Espn.nhl_team_info(@team.espn_id)
    # @mlb_info = Espn.mlb_info
    # @nba_info = Espn.nba_info
    # @nfl_info = Espn.nfl_info
    # @nhl_info = Espn.nhl_info
    @mlb_news = Espn.mlb_team_news(@team.espn_id)
    @nba_news = Espn.nba_team_news(@team.espn_id)
    @nfl_news = Espn.nfl_team_news(@team.espn_id)
    @nhl_news = Espn.nhl_team_news(@team.espn_id)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    if @team.save
      redirect_to(team_path(@team))
    else
      render(:edit)
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to(teams_path)
  end

  private
  def team_params
    params.require(:team).permit(:team_name, :team_location)
  end

end
