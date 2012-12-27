class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(params[:comment])
    if @comment.save
      redirect_to game_url(id: @comment.game.id)
    else
      redirect_to root_url
    end
  end
  
  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :back
  end
end
