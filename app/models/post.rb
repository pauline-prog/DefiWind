class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_many :likes, dependent: :destroy
  has_one_attached :photo
  acts_as_votable
end
