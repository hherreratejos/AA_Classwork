class Edit < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :session_tokent
  end
end
