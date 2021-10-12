require 'rails_helper'

RSpec.describe "Personals", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "me"
      expect(response).to have_http_status(:success)
    end
  end

end
