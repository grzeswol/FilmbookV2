class Actor < ActiveRecord::Base
	validates_presence_of :born_year, :name, :born_place, :bio
	has_and_belongs_to_many :films

	def to_s
		name
	end
end
