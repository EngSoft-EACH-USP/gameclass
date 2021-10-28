require 'rails_helper'

RSpec.describe "Whoamis", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/whoami"
      expect(response).to have_http_status(:success)
    end
  end

end
