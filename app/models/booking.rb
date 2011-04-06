class Booking < ActiveRecord::Base
  has_many :flights
  has_many :travelers

  validates_presence_of :flight
  validates_associated  :flight

  validates :name, :presence => true,
                   :length => { :minimum => 2 }
  
  validates_format_of :personal_number, :with =>/[0-9]{10}/

  validates_format_of :mail, :with =>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/

  validates :phone_number, :presence => true,
                           :length => { :minimum => 5 }  
     
end
