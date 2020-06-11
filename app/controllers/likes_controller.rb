# class LikesController < ApplicationController
# skip_before_action :verify_authenticity_token
#   def create
#   	# if params[:statut] == true
#   	  @like = Like.new
#   	  @like.user = current_user
#   	  @like.post_id = params[:id].to_i
#   	  @like.save!
#   	  render json:{id: params[:id]}
#   	# else
#   	#   @like = Like.where(post, @id).where(user, current_user).first()
#   	#   @post = Post.find_by_id(@id)
#   	#   @like = @post.like
#   	#   @like.destroy
#   	# end
#   end
# end
