require "rails_helper"

RSpec.describe CoachesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/coaches").to route_to("coaches#index")
    end
  end
end
