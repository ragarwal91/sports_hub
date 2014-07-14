class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update,:destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.baseball_team_id = params[:baseball_team_id]
    @user.basketball_team_id = params[:basketball_team_id]
    @user.football_team_id = params[:football_team_id]
    @user.hockey_team_id = params[:hockey_team_id]
    if @user.save
      session[:current_user] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    baseball_team = Team.find(@user.baseball_team_id)
    @mlb_news = Espn.mlb_team_news(baseball_team.espn_id)
    @mlb_info = Espn.mlb_team_info(baseball_team.espn_id)
    sleep(0.5)
    basketball_team = Team.find(@user.basketball_team_id)
    @nba_news = Espn.nba_team_news(basketball_team.espn_id)
    @nba_info = Espn.nba_team_info(basketball_team.espn_id)
    sleep(0.5)
    football_team = Team.find(@user.football_team_id)
    @nfl_news = Espn.nfl_team_news(football_team.espn_id)
    @nfl_info = Espn.nfl_team_info(football_team.espn_id)
    sleep(0.5)
    hockey_team = Team.find(@user.hockey_team_id)
    @nhl_news = Espn.nhl_team_news(hockey_team.espn_id)
    @nhl_info = Espn.nhl_team_info(hockey_team.espn_id)
    @breaking_news = User.breaking_news
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.baseball_team_id = params[:baseball_team_id]
    @user.basketball_team_id = params[:basketball_team_id]
    @user.football_team_id = params[:football_team_id]
    @user.hockey_team_id = params[:hockey_team_id]
    if @user.save
      redirect_to(user_path(@user))
    else
      render(:edit)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if session[:current_user] == @user.id
      @user.destroy
    end
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name,:email_address, :password, :password_confirmation,:baseball_team_id,:baketball_team_id,:football_team_id,:hockey_team_id)
  end
end
