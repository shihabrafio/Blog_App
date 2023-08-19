class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post
  attribute :text, :text
  after_save :update_user_comment_counter


  def update_user_comment_counter
    post.increment!(:comments_counter)
  end
end
