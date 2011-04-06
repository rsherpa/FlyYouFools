class Airport < ActiveRecord::Base
  has_many :flights

  validates :stad, :presence => true,
            :length => { :minimum => 2 }
 
  validates_format_of :iata, :with =>/[A-Z]{3}/
  validates_uniqueness_of :iata
end
