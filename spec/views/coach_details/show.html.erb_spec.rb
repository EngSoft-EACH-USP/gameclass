require 'rails_helper'

RSpec.describe "coach_details/show.html.erb", type: :view do
  let(:user) do
    { username: "Paulo Kim", kind: 1, name: 'paulo', password: 'paulo', description: "Jogado de Lol", whatsapp: '11980770907' }
  end

  it 'should render coach details page' do
    assign(:user, User.new(username: "Paulo Kim", kind: 1, name: 'paulo', password: 'paulo', description: "Jogado de Lol", whatsapp: '11980770907'))
    render

    rendered.should =~ /CoachDetails#show/
  end

  it 'should not render coach details page' do
    render

    rendered.should =~ /Coach not found/
  end
end
