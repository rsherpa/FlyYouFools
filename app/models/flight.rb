class Flight < ActiveRecord::Base
  belongs_to :airport, :foreign_key => "origin"
  belongs_to :airport, :foreign_key => "destination"

  has_many :bookings
end
