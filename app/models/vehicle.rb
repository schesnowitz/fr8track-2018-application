class Vehicle < ApplicationRecord
  validates :vin, uniqueness: { case_sensitive: false }
  has_many :shipments
  has_many :broker_profiles
  FUEL_TYPE = %w(
    diesel 
    gasoline 
    propane 
    lng 
    cng 
    ethanol 
    methanol 
    e85 
    m85 
    a55 
    biodiesel 
    other
  )

  def driver_full_name
    if !self.driver_first_name.nil? || self.driver_last_name
      self.driver_first_name + ' ' + self.driver_last_name
    end
  end
end
