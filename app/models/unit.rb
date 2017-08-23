class Unit < ApplicationRecord
  belongs_to :property

  validates_presence_of :address
end
