Before '@criar_usuario_teste' do
    @user = User.new(username: "TestUser", password: "TestPassword")
    @user.save
end