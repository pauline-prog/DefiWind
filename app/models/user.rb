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
  has_many :group_rankings, dependent: :destroy
  # include PgSearch
  # multisearchable against: [:first_name, :last_name, :race_number]
end
