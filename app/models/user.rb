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
  has_many_attached :photos
  has_many :posts, through: :likes
  has_many :events, through: :favorites
end
