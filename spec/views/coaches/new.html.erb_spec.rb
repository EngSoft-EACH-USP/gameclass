require 'rails_helper'

RSpec.describe "coaches/new", type: :view do
  before(:each) do
    assign(:coach, Coach.new(
      name: "MyString",
      description: "MyText",
      whatsapp: "MyString"
    ))
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do

      assert_select "input[name=?]", "coach[name]"

      assert_select "textarea[name=?]", "coach[description]"

      assert_select "input[name=?]", "coach[whatsapp]"
    end
  end
end
