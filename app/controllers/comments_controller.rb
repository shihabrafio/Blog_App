class CommentsController < ApplicationController
  before_action :find_user
  before_action :find_post

  def new
    @comment = @post.comments.new
  end

  def create
    @comment = @post.comments.new(comment_params)
    @comment.author = current_user

    puts @comment
    if @comment.save
      redirect_to user_post_path(@user, @post), notice: 'Commented Successfully'
    else
      redirect_to user_post_path(@user, @post), alert: 'Comment Failed!'
    end
  end

  private

  def find_user
    @user = current_user
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
