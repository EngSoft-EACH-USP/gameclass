require 'rails_helper'

RSpec.describe "admin/coaches.haml", type: :view do
  it 'shows infos about each coach' do
    user = build :user
    coach = build :coach, user: user
    coach_list = [ coach ]
    assign(:coaches, coach_list)
    render
    expect(rendered).to match /#{user.name}/
    expect(rendered).to match /#{coach.game}/
    expect(rendered).to match /#{coach.whatsapp}/
  end
end
