class Airplane < ActiveRecord::Base
  validates :name,  :presence => true,
                    :length => { :minimum => 2 }
  validates :max_passengers, :presence => true
		:validates_numericality_of
end
