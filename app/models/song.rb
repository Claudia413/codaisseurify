class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :rating, length: {maximum: 1}
  validates :release_date, presence: true
  validates :rating, numericality: true
end
