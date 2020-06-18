class FriendGroup < ApplicationRecord
  belongs_to :event
  has_many :friend_groups_users
  has_one :friend_groups_users, dependent: :destroy
  has_many :users, through: :friend_groups_users

  def add_user(user)
  	# if user.group_rankings.empty?
   #    user.group_rankings = self
   #  else
   #    user.group_rankings += self
   #   end
    user.group_rankings << self
    # self.users << user
  end

  def add_position(position)
   #  if position.group_rankings.empty?
   #    position.group_rankings = self
  	# else 
   #    position.group_rankings += self
   #  end
     # position.group_rankings << self
   self.positions << position
  end
end
