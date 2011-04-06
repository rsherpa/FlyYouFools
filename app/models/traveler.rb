class Traveler < ActiveRecord::Base

  validates :name,  :presence => true,
                    :length => { :minimum => 2 }

  validates_presence_of :personal_number
  validates_format_of :personal_number, :with => /[0-9]{6}\-[0-9]{4}/
end
