class Property < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :units
end
