require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#update_post_comments_counter' do
    it 'updates the post comments_counter attribute' do
      user = User.create(name: 'King')
      post = Post.create(title: 'Hello', author: user)
      comment = Comment.create(author: user, post:)

      comment.update_user_comment_counter
      expect(post.reload.comments_counter).to eq(2)
    end
  end
end
