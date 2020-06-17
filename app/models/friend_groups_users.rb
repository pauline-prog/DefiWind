class FriendGroupsUsers < ApplicationRecord
  belongs_to :user
  belongs_to :friend_group
end
