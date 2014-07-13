class CommentsController < ApplicationController
  before_action :authenticate, only: [:new,:create]

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:current_user]
    if @comment.save
      team = Team.find(params[:team_id])
      team.comments.push(@comment)
      redirect_to team_path(team)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to team_path(@comment.team)
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :resume_id)
  end

end
