class PagesController < ApplicationController
  def home
  	@posts = Post.all.order('created_at DESC')
    @likes = Like.all
  end

  def meteo
  end

  def profile
    if current_user
      @user = current_user
    else
      redirect_to new_user_session_path
    end
  end

  def like
    @post = Post.find(params[:post_id])
    if current_user.posts.include?(@post)
      Like.where(user: current_user, post: @post).first.destroy
    else
      Like.create(user: current_user, post: @post)
    end
    redirect_to root_path(anchor: "post-#{@post.id}")
  end
end
