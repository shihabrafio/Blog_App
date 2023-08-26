class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @posts = Post.where(author_id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id], author_id: params[:user_id])
    @user = @post.author
    @comments = Post.find(@post.id).comments
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.author_id = @user.id

    if @post.save
      redirect_to user_posts_path(@user), notice: 'Posted Successfuly'
    else
      redirect_to user_posts_path(@user), alert: 'Post Failed!'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
