require 'rails_helper'

RSpec.describe "coaches/show", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      name: "Name",
      description: "MyText",
      whatsapp: "Whatsapp"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Whatsapp/)
  end
end
