class ChangeUserIdtoUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :userID, :user_id
  end
end
