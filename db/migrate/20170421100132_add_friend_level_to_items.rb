class AddFriendLevelToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :friend_level, :string
  end
end
