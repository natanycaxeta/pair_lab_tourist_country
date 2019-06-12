class Trip < ApplicationRecord
  belongs_to :tourist
  belongs_to :country
end
