class BlogPostsController < ApplicationController


	def index
		@blog_posts = Blog_post.all.order('created_at DESC')
	end

	def new
		@blog_post = Blog_Post.new
	end

	def show
	end

	def create
	end

	def edit
	end

	private

	def blog_post
		params.require(:blog_post).permit(:title, :body)

	end
end
