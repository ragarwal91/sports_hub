class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.save
      redirect_to(sport_path(@sport))
    else
      render(:new)
    end
  end

  def show
    @sport = Sport.find(params[:id])
    @teams = Sport.find(@sport.id)
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:id])
    @sport.update(sport_params)
    if @sport.save
      redirect_to(sport_path(@sport))
    else
      render(:edit)
    end
  end

  def destroy
    @sport = Sport.find(params[:id])
    @sport.destroy
    redirect_to(sports_path)
  end

  private
  def sport_params
    params.require(:sport).permit(:sport_name, :league_name, :league_name_short)
  end
end
