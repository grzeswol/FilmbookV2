class Film < ActiveRecord::Base
	validates :year, numericality: { only_integer: true }
end
