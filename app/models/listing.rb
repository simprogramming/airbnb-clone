class Listing < ApplicationRecord
  has_many :booking

  validates :title, presence:true, uniqueness: true
  validates :imageurl, presence: true
end
