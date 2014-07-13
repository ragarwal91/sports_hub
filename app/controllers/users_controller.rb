class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update]

  def index
    @users = User.all
  #   @info = {:mlb => mlb_info,
  #             :nhl => info}
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
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    # @mlb_team_info = Espn.mlb_team_info(@user.baseball_team_id)
    # @nba_team_info = Espn.nba_team_info(@user.basketball_team_id)
    @mlb_news = User.mlb_team_news(@user.baseball_team_id)
    sleep(1)
    @nba_news = User.nba_team_news(@user.basketball_team_id)
    sleep(1)
    @nfl_news = User.nfl_team_news(@user.football_team_id)
    sleep(1)
    @nhl_news = User.nhl_team_news(@user.hockey_team_id)
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
