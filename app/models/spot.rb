class Spot < ActiveRecord::Base
  validates :address_number, :street_direction, :street_name, :street_type, presence: true
  validates :street_direction, inclusion: { in: %w(N S E W),
    message: "%{value} is not a valid direction, please enter N S E or W" }
  before_validation :uppercase

    #street types: AVE, BLVD, ST, PL, TER, RD, PKWY, DR, CT, LN, WAY

    def uppercase
      self.street_name.upcase!
    end

    def even?
      even_odd = self.address_number.even? ? "E" : "O"
    end

    def numberRange(address_number)
    address_number >= Zone.address_range_low && address_number <= Zone.address_range_high ? "Permit Zone" : "Not a Permit Zone"
    end

end
