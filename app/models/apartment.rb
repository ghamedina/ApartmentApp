class Apartment < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.address1}, #{self.address2}, #{self.city}, #{self.state}, #{self.zip}, #{self.country}"
  end

end
