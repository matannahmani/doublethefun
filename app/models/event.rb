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
  validates  :date, presence: true
end
