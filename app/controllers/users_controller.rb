class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to(user_path(@user))
    else render(:edit)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if sesson[:current_user] == @user.id
      @user.destroy
    end
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name,:email_address, :password, :password_confirmation)
  end
end
