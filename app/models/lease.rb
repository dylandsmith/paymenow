class Lease < ApplicationRecord
  has_and_belongs_to_many :leases
  belongs_to :unit
end
