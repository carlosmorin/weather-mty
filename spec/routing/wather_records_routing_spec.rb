require "rails_helper"

RSpec.describe WatherRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wather_records").to route_to("wather_records#index")
    end

    it "routes to #show" do
      expect(get: "/wather_records/1").to route_to("wather_records#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wather_records").to route_to("wather_records#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wather_records/1").to route_to("wather_records#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wather_records/1").to route_to("wather_records#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wather_records/1").to route_to("wather_records#destroy", id: "1")
    end
  end
end
