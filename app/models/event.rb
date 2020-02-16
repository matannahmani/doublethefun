class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  validates  :description, presence: true
  validates  :name, presence: true
  validates  :location, presence: true
  validates  :team, presence: true
end
