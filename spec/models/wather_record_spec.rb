require 'rails_helper'

RSpec.describe WatherRecord, type: :model do
	it "Convert temp to cetigrades" do
		record = WatherRecord.create(temp: 302.15)
		cent_temp = 302.15 - 273.15
		expect(record.temp).to eq(cent_temp.to_d)
	end
end
