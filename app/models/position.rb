class Position < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :point, presence: true
  validates :time, presence: true
  validates :place, presence: true, uniqueness: true
end
