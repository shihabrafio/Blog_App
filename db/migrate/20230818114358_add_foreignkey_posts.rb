class AddForeignkeyPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :author, foreign_key: { to_table: :users , column: :user_id}
  end
end
