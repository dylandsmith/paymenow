class Unit < ApplicationRecord
  belongs_to :property
  has_one :unit_financial
  has_many :leases

  validates_presence_of :address
end
