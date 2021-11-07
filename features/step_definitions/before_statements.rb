
Before '@mock_user' do
    user = FactoryBot::create :user, :id => 1
    @username = user.username
    @password = user.password
    @name = user.name
end

Before '@mock_coach' do
    user = FactoryBot::create :user, :id => 2
    coach = FactoryBot::create :coach, :user_id => 2, :whatsapp => 11980770907
    coach.save
end

Before '@mock_affiliate_request' do
    user = FactoryBot::create :user, :id => 6, :name => 'aceitado'
    user = FactoryBot::create :user, :id => 7, :name => 'rejeitado'
    affiliate_accept = FactoryBot::create :affiliate_request, :user_id => 6
    affiliate_reject = FactoryBot::create :affiliate_request, :user_id => 7
    affiliate_accept.save
    affiliate_reject.save
end