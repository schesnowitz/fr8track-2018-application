class Vehicle < ApplicationRecord
  validates :vin, uniqueness: { case_sensitive: false }
end
