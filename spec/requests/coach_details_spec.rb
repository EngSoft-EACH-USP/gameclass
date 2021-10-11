require 'rails_helper'

RSpec.describe "CoachDetails", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/coach_details/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/coach_details/show"
      expect(response).to have_http_status(:success)
    end
  end

end
