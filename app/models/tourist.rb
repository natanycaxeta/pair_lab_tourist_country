class Tourist < ApplicationRecord
  has_many :trips
  has_many :countries, through: :trips
  accepts_nested_attributes_for :countries
end
