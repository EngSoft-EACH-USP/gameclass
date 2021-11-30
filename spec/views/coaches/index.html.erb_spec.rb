require 'rails_helper'

RSpec.describe "coaches/index.html.erb", type: :view do
  before do
    assign(:coaches, [
      Coach.create!(user_id: 1, game: 'lol', description: 'Jogado de Lol', whatsapp: '11980770907'),
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", text: "Administradores do GameClass".to_s, count: 1
    assert_select "tr>td", text: "lol".to_s, count: 1
  end
end
