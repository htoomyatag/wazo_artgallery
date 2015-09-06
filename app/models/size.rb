class Size < ActiveRecord::Base
	has_many :paints
	has_many :photos

	
end
