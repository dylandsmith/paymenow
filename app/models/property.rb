class Property < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :units

  validates_presence_of :title
end
