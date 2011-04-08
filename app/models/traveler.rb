class Traveler < ActiveRecord::Base
  belongs_to :booking

  validates :name,  :presence => true,
                    :length => { :minimum => 2 }

  validates_format_of :personal_number, :with =>/[0-9]{10}/
  validates_uniqueness_of :personal_number
end
