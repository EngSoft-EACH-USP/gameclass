require 'rails_helper'

RSpec.describe "coaches/index.html.erb", type: :view do
  before do
    assign(:users, [
      User.create!(username: "Paulo Kim", kind: 1, name: 'paulo', password: 'paulo', description: "Jogado de Lol", whatsapp: '11980770907'),
      User.create!(username: "Paulo Kim", kind: 1, name: 'paulo', password: 'paulo', description: "Jogado de Lol", whatsapp: '11980770907')
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", text: "paulo".to_s, count: 2
    assert_select "tr>td", text: "11980770907".to_s, count: 2
    assert_select "tr>td", text: "Jogado de Lol".to_s, count: 2
  end
end
