class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :attendances
  validates  :description, presence: true
  validates  :name, presence: true
  validates  :location, presence: true
  validates  :team, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_team_and_location,
    against: [ :team, :location ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
