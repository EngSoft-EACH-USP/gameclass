
Quando 'eu preencho corretamente o campo Usuário' do
    fill_in 'username', :with => @user.username
end

Quando 'eu preencho corretamente o campo Senha' do
    fill_in 'password', :with => @user.password
end

Então 'eu deveria encerrar a minha sessão particular' do
    # Meio gambiarra isso
    @temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are not logged in.'
    visit @temp
end