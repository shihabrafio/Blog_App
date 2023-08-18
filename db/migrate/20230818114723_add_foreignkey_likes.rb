class AddForeignkeyLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author, foreign_key: { to_table: :users , column: :user_id}
    add_reference :likes, :post, foreign_key: { to_table: :users , column: :post_id}
  end
end
