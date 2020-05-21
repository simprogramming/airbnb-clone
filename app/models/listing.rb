class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :title, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :description, presence: true



  # validates :availability, through: :booking

  validates :category, presence: true
  # validates :availability

end
