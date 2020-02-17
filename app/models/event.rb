class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates  :description, presence: true
  validates  :name, presence: true
  validates  :location, presence: true
  validates  :team, presence: true
end
