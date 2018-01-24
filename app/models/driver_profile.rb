class DriverProfile < ApplicationRecord
  has_many :drivers
  before_create :random_id
  
  validates :driver_internal_id, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  def random_id
  # self.driver_company_id = (0...50).map { (65 + rand(26)).chr }.join
  self.driver_internal_id = SecureRandom.hex
  end
  
  after_create :build_driver
  
  def build_driver
    Driver.create(driver_profile: self, password: 'password', password_confirmation: 'password', email: self.email) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end
end
