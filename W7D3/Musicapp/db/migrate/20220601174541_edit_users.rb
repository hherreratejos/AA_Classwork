class EditUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_digest, :string, null: false
    add_column :users, :session_tokent, :string, null: false
  end
end
