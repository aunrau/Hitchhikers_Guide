class Guide < ApplicationRecord
  validates :character, :specie, presence: true
end
