class AddForeignkeyComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :author, foreign_key: { to_table: :users , column: :user_id}
    add_reference :comments, :post, foreign_key: { to_table: :users , column: :post_id}
  end
end
