
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

Before '@mock_affiliate_request' do
    user = FactoryBot::create :user, :id => -2, :name => 'aceitado'
    user = FactoryBot::create :user, :id => -3, :name => 'rejeitado'
    affiliate_accept = FactoryBot::create :affiliate_request, :user_id => -2
    affiliate_reject = FactoryBot::create :affiliate_request, :user_id => -3
    affiliate_accept.save
    affiliate_reject.save
end