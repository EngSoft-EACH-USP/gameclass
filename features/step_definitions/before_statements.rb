
Before '@mock_user' do
    user = User.new username: "TestUser", password: "TestPassword", name: "Usuario", kind: :coach
    user.save
end