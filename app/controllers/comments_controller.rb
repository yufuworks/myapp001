class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], poet_id: comment_params[:poet_id], user_id: current_user.id)
    redirect_to "/poets/#{comment.poet.id}"
  end

  private
  def comment_params
    params.permit(:text, :poet_id)
  end
end
