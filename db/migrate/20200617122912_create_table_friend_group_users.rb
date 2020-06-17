class CreateTableFriendGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :table_friend_group_users do |t|
      t.references :user
      t.references :friend_group
    end
  end
end
