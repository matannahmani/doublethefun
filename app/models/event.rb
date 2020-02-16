class Event < ApplicationRecord
  belongs_to :user
  validates  :description, presence: true
  validates  :name, presence: true
  validates  :location, presence: true
  validates  :team, presence: true
end
