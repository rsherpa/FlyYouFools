class Booking < ActiveRecord::Base
   validates :flight_id,  :presence => true,
                          :length => { :minimum => 2 }

  validates :name,  :presence => true,
                     :length => { :minimum => 2 }
  
  validates_format_of :personal_number, :with =>/[0-9]{10}/
  validates_uniqueness_of :personal_number

  validates_format_of :mail, :with =>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/

  validates :phone_number,  :presence => true,
                            :length => { :minimum => 5 }  
     
end
