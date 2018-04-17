class Spot < ApplicationRecord
  validates :address_number, :street_direction, :street_name, :street_type, presence: true
  validates :street_direction, inclusion: { in: %w(N S E W),
    message: "%{value} is not a valid direction, please enter N S E or W" }

    #street types: AVE, BLVD, ST, PL, TER, RD, PKWY, DR, CT, LN, WAY

end
