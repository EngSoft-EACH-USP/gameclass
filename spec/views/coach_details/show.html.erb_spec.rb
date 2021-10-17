require 'rails_helper'

RSpec.describe "coach_details/show.html.erb", type: :view do
  let(:user) do
    return FactoryBot.build(:user)
  end

  it 'should render coach details page' do
    assign(:user, FactoryBot.build(:user))
    render

    rendered.should =~ /CoachDetails#show/
  end

  it 'should not render coach details page' do
    render

    rendered.should =~ /Coach not found/
  end
end
