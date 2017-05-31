class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :name, presence: true
  validates :rating, length: {maximum: 1}

  def self.order_by(sort_order)
    if sort_order == "Sort A-Z"
      order(name: :asc)
    elsif sort_order == "Sort Z-A"
      order(name: :desc)
    else
    order(created_at: :asc)
    end
  end
end
