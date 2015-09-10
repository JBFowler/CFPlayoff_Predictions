class PostsController < ApplicationController
  before_action :require_user, except: [:show, :index]
  before_action :require_first_time, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
    @post = Post.new(post_params)
    @post.creator = current_user

    if @post.save
      flash["notice"] = "Your submission was created."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:winner, :seed_one, :seed_two, :seed_three, :seed_four) #team_ids: [])
  end

  def require_first_time
    if current_user.posts.first
      flash["error"] = "You can only make one submission"
      redirect_to root_path
    end
  end

end
