Before '@criar_usuario_teste' do
    user = User.new username: "TestUser", password: "TestPassword", name: "Usuario", kind: :coach
    user.save
end