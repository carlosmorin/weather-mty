require "rails_helper"

RSpec.describe WatherRecordsController, type: :routing do
	describe "routing" do

		it "routes to #index" do
			expect(get: "api/wather_records").to route_to("wather_records#index")
		end

		it "routes to #index sort by created_at: :asc" do
			expect(
				get: "api/wather_records?sort_by=created_at&order=asc"
			).to route_to( 
				"wather_records#index", 
				sort_by: "created_at", 
				order: "asc")
		end

		it "routes to #index sort by created_at: :desc" do
			expect(
				get: "api/wather_records?sort_by=created_at&order=desc"
			).to route_to( 
				"wather_records#index", 
				sort_by: "created_at", 
				order: "desc")
		end

		it "routes to #index sort by temp: :asc" do
			expect(
				get: "api/wather_records?sort_by=temp&order=asc"
			).to route_to( 
				"wather_records#index", 
				sort_by: "temp", 
				order: "asc")
		end

		it "routes to #index sort by temp: :desc" do
			expect(
				get: "api/wather_records?sort_by=temp&order=desc"
			).to route_to( 
				"wather_records#index", 
				sort_by: "temp", 
				order: "desc")
		end

		it "routes to #index get lower record" do
			expect(
				get: "api/wather_records?find=lower"
			).to route_to( 
				"wather_records#index", 
				find: "lower")
    end

   	it "routes to #index get highest record" do
			expect(
				get: "api/wather_records?find=highest"
			).to route_to( 
				"wather_records#index", 
				find: "highest")
    end

  end
end
