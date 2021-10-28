
Before '@mock_user' do
    user = FactoryBot::create :user
    @username = user.username
    @password = user.password
    @name = user.name
end

Before '@mock_coach' do
    user = FactoryBot::create :user, :id => -1
    coach = FactoryBot::create :coach, :user_id => -1
    coach.save
end