class Film < ActiveRecord::Base
	validates :year, numericality: { only_integer: true }
	before_save :strip_whitespaces
	has_and_belongs_to_many :actors

	private
	def strip_whitespaces
		self.title.strip!
		self.image.strip!
		self.director.strip!
		self.description.strip!
	end
end
