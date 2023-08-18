class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy


  def recent_posts
    posts.order(created_at: :desc).limit(5)
  end

  after_save :update_user_post_counter

  private

  def update_user_post_counter
    author.increment!(:posts_counter)
  end
end
