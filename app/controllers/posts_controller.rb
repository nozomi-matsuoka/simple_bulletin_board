class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post =Post.create(
			title: params[:post][:title],
			content: params[:post][:content]
		)

		redirect_to "/"
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.title = params[:post][:content]
		@post.content = params[:post][:content]
		@post.save
		redirect_to "/"
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to "/"
	end
end
