
###################### Dado

Dado "que eu estou na página de login" do
    visit 'login'
end

Dado "que eu estou na página inicial" do
    pending
end

###################### Quando

Quando "eu clico no botão de login" do
    pending
end

Quando 'eu preencho o campo usuário com {string}' do |string|
    fill_in 'user', :with => string
end

Quando 'eu preencho o campo senha com {string}' do |string|
    fill_in 'password', :with => string
end

Quando 'eu clico no botão entrar' do
    click_on 'Entrar'
end

###################### Então

Então "eu deveria ser redirecionado para a página de login" do
    pending
end

Então 'eu deveria ser redirecionado para a minha área pessoal' do
    pending
end

Então 'eu deveria ver a mensagem única de erro de login.' do
    expect(page).to have_content("error")
end
