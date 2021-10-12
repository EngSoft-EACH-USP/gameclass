require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        name: "Name",
        description: "MyText",
        whatsapp: "Whatsapp"
      ),
      Coach.create!(
        name: "Name",
        description: "MyText",
        whatsapp: "Whatsapp"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Whatsapp".to_s, count: 2
  end
end
