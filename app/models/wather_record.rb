class WatherRecord < ApplicationRecord
	before_create :temp_to_centigrade

	private

		def temp_to_centigrade
			self.temp = temp - 273.15
		end
end
