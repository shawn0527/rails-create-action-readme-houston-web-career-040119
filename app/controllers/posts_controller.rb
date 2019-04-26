class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    post = Post.new(params[title: params[:title]])
    redirect_to post_path(post)
  end
end
