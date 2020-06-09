class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  has_many :favorites, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_one_attached :photo
end
