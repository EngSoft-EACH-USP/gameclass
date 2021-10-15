require 'rails_helper'

RSpec.describe "Personals", type: :request do
  describe "Peronsal Home Page" do
    it "redirects if not logged" do
      get "/me"
      expect(response).to have_http_status(:redirect)
    end
  end

end
