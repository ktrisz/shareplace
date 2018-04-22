class CommentsController < ApplicationController
    def create
    @comment = Comment.create(text: params[:text], shareplace_id: params[:shareplace_id], user_id: current_user.id, post_id: params[:post_id])
    # redirect_to "/shareplaces/#{@comment.post.id}"
    redirect_to "/shareplaces/#{@comment.shareplace_id}/posts/#{@comment.post.id}"
  end
end
