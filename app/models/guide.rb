class Guide < ApplicationRecord
  belongs_to :planet
  accepts_nested_attributes_for :planet
end
