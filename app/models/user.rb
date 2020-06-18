class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :race_number, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_one_attached :avatar
  has_one_attached :photo
  has_many :posts, through: :likes
  has_many :events, through: :favorites
  has_one :friend_groups_users, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :search_by_names_and_race_number,
    against: [:first_name, :last_name, :race_number],
    using: {
      tsearch: { prefix: true }
    }

  def position_for_graph
    graph_positions = {}
    self.positions.map do |position|
      graph_positions[position.created_at] = position.place
    end
    return graph_positions
  end
end
