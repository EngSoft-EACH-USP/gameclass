 require 'rails_helper'

RSpec.describe "/coaches", type: :request do
  before do
    FactoryBot::create :user, :id => -1, :kind => :coach
    FactoryBot::create :coach, :user_id => -1
  end

  describe "GET /index" do
    it "renders a successful response" do
      get '/coaches'
      expect(response).to be_successful
    end
  end
end
