class HomesController < ApplicationController
	def index
		@projects = Project.all.limit(6).order(created_at: :desc)
		@posts = Post.all.limit(6).order(created_at: :desc)
	end
	def aboutme
	end
	def contact
	end
end
