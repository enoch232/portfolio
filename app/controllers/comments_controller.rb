class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		if @comment.save
			respond_to do |format|
				format.html{ redirect_to post_path(@post)}
				format.js
			end
		else
			render :back
		end
		
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		respond_to do |format|
			format.html{redirect_to :back}
			format.js
		end
		
	end

	private

	def comment_params
		params.require(:comment).permit(:post_id, :commentor, :body)
	end
end
