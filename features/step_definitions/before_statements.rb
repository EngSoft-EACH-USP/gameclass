
Before '@mock_user' do
    user = User.new username: "TestUser", password: "TestPassword", name: "Usuario", kind: :coach, whatsapp: '11980770907'
    user.save
end