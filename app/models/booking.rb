class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :description, presence: true
  validates :attendance, presence: true

  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :states
end
