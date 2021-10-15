
###################### Dado

Dado "que eu estou na página de login" do
    visit 'login'
    expect(current_path).to eq '/login'
end

Dado 'que eu não estou logado' do
    page.driver.submit :delete, 'login', {}
end

Dado 'que eu estou logado' do

    # Tenta fazer login
    visit 'login'
    fill_in 'username', :with => 'TestUser'
    fill_in 'password', :with => 'TestPassword'
    click_on 'Entrar'

    # Garante que estará logado antes de executar a próxima linha
    temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are logged as'
    visit temp  # Volta para a página anterior. Isso pode ser arriscado.

end

###################### Quando

Quando 'eu tento acessar a página de login' do
    visit '/login'
end

Quando 'eu tento acessar minha área pessoal' do
    visit '/me'
end

Quando "eu clico no botão de login" do
    pending
end

Quando 'eu preencho o campo usuário com {string}' do |username|
    fill_in 'username', :with => username
end

Quando 'eu preencho o campo senha com {string}' do |password|
    fill_in 'password', :with => password
end

Quando 'eu clico no botão entrar' do
    click_on 'Entrar'
end

###################### Então

Então "eu devo ser redirecionado para a página de login" do
    expect(current_path).to eq '/login'
end

Então 'eu devo ser redirecionado para a minha área pessoal' do
    expect(current_path).to eq '/me'
end

Então 'eu devo ver a mensagem única de erro de login.' do
    expect(page).to have_content "Credenciais inválidas"
end

Então 'minha sessão pessoal deve ser iniciada' do
    # Meio gambiarra isso
    @temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are logged as'
    visit @temp
end