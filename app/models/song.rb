class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :release_date, presence: true
end
