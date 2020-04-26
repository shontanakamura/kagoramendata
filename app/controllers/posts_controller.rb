class PostsController < ApplicationController
  before_action :move_to_top, except: [:index, :show, :top]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.create(post_params)
    @posts.save
    redirect_to root_path
  end

  def top
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end
  private

  def post_params
    params.require(:post).permit(:title, :content).merge(user_id: current_user.id)
  end

  def move_to_top
    redirect_to action: :top unless user_signed_in?
  end

end
