class PostsController < ApplicationController

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def new

  end

end
