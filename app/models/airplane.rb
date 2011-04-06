class Airplane < ActiveRecord::Base
  has_many flights

  validates :name,  :presence => true,
                    :length => { :minimum => 2 }
  validates :max_passengers, :presence => true
		:validates_numericality_of
end
