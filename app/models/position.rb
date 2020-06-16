class Position < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :point, presence: true
  validates :time, presence: true
  validates :place, presence: true, uniqueness: true
  has_many :group_rankings
  include PgSearch::Model
  pg_search_scope :global_search,
    associated_against: {
      user: [ :first_name, :last_name, :race_number ]
    },
    using: {
      tsearch: { prefix: true }
    }
  # multisearchable :against => [:user, :author]
end
