class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :attendances
  validates  :description, presence: true
  validates  :name, presence: true
  validates  :location, presence: true
  validates  :team, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_team_and_location,
    against: [ :team, :location, :name ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  validates  :date, presence: true
  validates  :capacity, :numericality => { :greater_than_or_equal_to => 1 }
end
