class Booking < ApplicationRecord
  validates :description, presence: true
  validates :attendance, presence: true
end
