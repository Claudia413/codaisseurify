class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :rating, length: {maximum: 1}

  def self.order_by_name
    order(:name)
  end

  def self.order_by_name_reverse
    order(name: :desc)
  end

end
