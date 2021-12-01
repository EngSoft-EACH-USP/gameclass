require 'rails_helper'

RSpec.describe "coaches/index.html.erb", type: :view do
  before do
    @user = create :user
    coach = create :coach, user_id: @user.id
    assign(:coaches, [ coach ])
  end

  it "renders a list of coaches" do
    render
    expect(rendered).to match @user.name
    #assert_select "tr>td", text: "Administradores do GameClass".to_s, count: 1
    #assert_select "tr>td", text: "lol".to_s, count: 1
  end
end
