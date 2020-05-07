class RemoveUserIdIdFromBookComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :book_comments, :user_id_id, :integer
  end
end
