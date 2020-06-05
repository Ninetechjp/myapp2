class AddIndexToUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :users, "LCASE(email)", unique: true
  end
end
