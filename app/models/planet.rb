class Planet < ApplicationRecord
  has_many :guides

  validates :planet, :location, presence: true
end
