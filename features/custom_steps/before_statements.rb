
# Obsoleto, má prática e removerei assim qeu possível.
Before '@mock_user' do
    user = FactoryBot::create :user
    @username = user.username
    @password = user.password
    @name = user.name
end

Before '@mock_coach' do
    user = FactoryBot::create :user
    coach = FactoryBot::create :coach, :user_id => user.id, :whatsapp => 11980770907
end

Before '@mock_affiliate_request' do
    @deve_ser_aceito = FactoryBot::create :user, kind: :learner
    @deve_ser_rejeitado = FactoryBot::create :user, kind: :learner
    @affiliate_accept = FactoryBot::create :affiliate_request, :user_id => @deve_ser_aceito.id
    @affiliate_reject = FactoryBot::create :affiliate_request, :user_id => @deve_ser_rejeitado.id
end

Before '@clear_coaches' do
  Coach.all.each do |coach|
    coach.destroy
  end
end