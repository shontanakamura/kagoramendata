class PostsController < ApplicationController
  before_action :move_to_top, except: [:index, :show, :top]
  
  def index
    # @posts = post.all
  end

  def new
    
  end

  def create
    Post.create(post_params)
  end

  def top
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def move_to_top
    redirect_to action: :top unless user_signed_in?
  end

end
