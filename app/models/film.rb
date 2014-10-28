class Film < ActiveRecord::Base
	validates :year, numericality: { only_integer: true }
	before_save :strip_whitespaces

	private
	def strip_whitespaces
		self.title.strip!
		self.image.strip!
		self.director.strip!
	end
end
