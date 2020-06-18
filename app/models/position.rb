class Position < ApplicationRecord
  before_validation :string_to_boolean

  belongs_to :event
  belongs_to :user
  validates :point, presence: true
  validates :time, presence: true
  validates :place, presence: true
  validates :general, default: false
  include PgSearch::Model
  pg_search_scope :global_search,
    associated_against: {
      user: [ :first_name, :last_name, :race_number ]
    },
    using: {
      tsearch: { prefix: true }
    }
  # multisearchable :against => [:user, :author]


  def string_to_boolean
    self.general = true if self.general == "true"
    self.general = false if self.general == "false"
  end
end
