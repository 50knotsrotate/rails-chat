class AddUserIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :userID, :integer
  end
end
