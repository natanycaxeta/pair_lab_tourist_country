class Country < ApplicationRecord
  has_many :trips
  has_many :tourists, through: :trips
end
