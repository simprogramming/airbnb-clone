class Listing < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true
end
