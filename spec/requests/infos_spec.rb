require 'rails_helper'

RSpec.describe "Register", type: :request do
  describe "GET /infos/1" do
    it "redirected because not logged in" do
      get "/infos/1"
      expect(response).to have_http_status(302)
    end
  end
end
