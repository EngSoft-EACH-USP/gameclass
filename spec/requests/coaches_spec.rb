 require 'rails_helper'

RSpec.describe "/coaches", type: :request do
  before do
    User.create(username: "Paulo Kim", kind: 1, name: 'paulo', password: 'paulo', description: "Jogado de Lol", whatsapp: '11980770907')
    Coach.create(user_id: 1, game: 'lol', description: 'Jogador de lol', whatsapp: '11980770907')
  end

  describe "GET /index" do
    it "renders a successful response" do
      get '/coaches'
      expect(response).to be_successful
    end
  end
end
