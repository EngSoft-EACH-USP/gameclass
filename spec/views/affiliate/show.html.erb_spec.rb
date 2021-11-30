require 'rails_helper'

RSpec.describe "affiliate/show.html.erb", type: :view do
  before do
    assign(:user, FactoryBot.build(:user))
    assign(:affiliates, [
      AffiliateRequest.create!(user_id: 1, description: 'Sou bom no lol, diamante', status: :pending),
    ])
  end

  it 'should render coach details page' do
    render

    rendered.should =~ /Solicitações de afiliação/
  end

  it 'should not render coach details page' do
    assign(:affiliates, [])
    render

    rendered.should =~ /Nao existem solicitacoes/
  end
end
