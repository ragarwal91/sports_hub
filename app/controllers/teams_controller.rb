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
    @response = Team.api
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
