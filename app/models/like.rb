class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_save :update_user_like_counter


  def update_user_like_counter
    post.increment!(:likes_counter)
  end
end
