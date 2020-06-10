class PagesController < ApplicationController
  def home
  	@posts = Post.all
  end

  def meteo
  end

  def like
    raise
    @post = Post.find(params[:post_id])
    if current_user.posts.include?(@post)
      Like.where(user: current_user, post: @post).first.destroy
    else
      Like.create(user: current_user, post: @post)
    end
    redirect_to root_path
  end

  # private

  # def upvote 
  #   @post = Post.find(params[:id])
  #   @post.upvote_by current_user
  #   redirect_to :back
  # end  

  # def downvote
	 #  @post = Post.find(params[:id])
	 #  @post.downvote_by current_user
	 #  redirect_to :back
  # end
end
