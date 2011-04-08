class Flight < ActiveRecord::Base
  belongs_to :airport, :foreign_key => "origin"
  belongs_to :airport, :foreign_key => "destination"
  belongs_to :airplane

  has_many :bookings
end
