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
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
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
