require "rails_helper"

RSpec.describe WatherRecordsController, type: :routing do
	describe "routing" do
		it "routes to #index" do
			expect(get: "api/wather_records").to route_to("wather_records#index")
		end

		it "routes to #index sort by created_at column" do
			expect(
				get: "api/wather_records?sort_by=created_at&order=desc"
			).to route_to( 
				"wather_records#index", 
				sort_by: "created_at", 
				order: "desc" )
    end
  end
end
