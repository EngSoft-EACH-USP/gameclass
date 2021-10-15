require 'rails_helper'

RSpec.describe "coach_details/show.html.erb", type: :view do
  let(:coach) do
    { name: 'Paulo Kim', description: 'Jogado de Lol', whatsapp: '11980770907' }
  end

  it 'should render coach details page' do
    assign(:coach, Coach.new(name: 'Paulo Kim', description: 'Jogado de Lol', whatsapp: '11980770907'))
    render

    rendered.should =~ /CoachDetails#show/
  end

  it 'should not render coach details page' do
    render

    rendered.should =~ /Coach not found/
  end
end
