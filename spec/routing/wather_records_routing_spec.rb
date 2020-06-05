require "rails_helper"

RSpec.describe WatherRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/wather_records").to route_to("wather_records#index")
    end
  end
end
