class Actor < ActiveRecord::Base
	validates_presence_of :born_year, :name, :born_place, :bio
end
