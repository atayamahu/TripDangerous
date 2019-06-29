require 'carmen'
include Carmen

class Trouble < ApplicationRecord
	before_save :change_code_to_name

	def change_code_to_name
		temp = Country.coded(self.country)
		self.country = temp.name
		temp_reg = temp.subregions.coded(self.region)
		self.region = temp_reg.name
	end
end
