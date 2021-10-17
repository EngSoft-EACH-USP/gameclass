
Before '@mock_user' do
    user = User.new username: "TestUser", password: "TestPassword", name: "Usuario", kind: :coach, whatsapp: '11980770907'
    user.save
end

Before '@mock_coach' do
    user = User.new username: "TestUser", password: "TestPassword", name: "Usuario", kind: :coach, whatsapp: '11980770907'
    user.save
    coach = Coach.new user_id: 1, game: 'lol', description: 'Jogado de Lol', whatsapp: '11980770907'
    coach.save
end