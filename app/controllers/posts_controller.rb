class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_provider, only: [ :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = authorize Post.find(params[:id])
  end

  def new
    @post = current_user.posts.new
    authorize @post
  end

  def create
    @post = current_user.posts.new(post_params)
    authorize @post
    if @post.save
      redirect_to @posts
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
  end

  def set_provider
    @post = Post.find(params[:id])
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
