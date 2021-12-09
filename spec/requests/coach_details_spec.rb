require 'rails_helper'

RSpec.describe "CoachDetails", type: :request do
  before do
    create :user
  end

  describe "GET /coach_details/:id" do
    it "returns http success" do
      get "/lol/coaches/1"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /coach_details/:id" do
    it "returns http error" do
      get "/lol/coaches/10"
      expect(response).to have_http_status(:success)
    end
  end
end
