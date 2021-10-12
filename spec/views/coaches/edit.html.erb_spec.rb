require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      name: "MyString",
      description: "MyText",
      whatsapp: "MyString"
    ))
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(@coach), "post" do

      assert_select "input[name=?]", "coach[name]"

      assert_select "textarea[name=?]", "coach[description]"

      assert_select "input[name=?]", "coach[whatsapp]"
    end
  end
end
