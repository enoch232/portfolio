class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end
	def destroy
	end
	private

	def comment_params
		params.require(:comment).permit(:post_id, :commentor, :body)
	end
end
