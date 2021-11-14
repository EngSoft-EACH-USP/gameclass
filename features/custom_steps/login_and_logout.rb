
Quando 'eu preencho corretamente o campo Usuário' do
    fill_in 'username', :with => @my_account.username
end

Quando 'eu preencho corretamente o campo Senha' do
    fill_in 'password', :with => @my_account.password
end

Então 'eu deveria encerrar a minha sessão particular' do
    # Meio gambiarra isso
    @temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are not logged in.'
    visit @temp
end