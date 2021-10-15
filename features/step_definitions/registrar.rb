
# Define as credenciais que o usuário usaria antes de começar os steps
Before '@define_credentials' do
  @username = FFaker::Internet.user_name
  @password = FFaker::Internet.password
  @name = FFaker::Name::first_name
end


Dado('que eu já estou cadastrado') do
  user = User.new name: @name, username: @username, password: @password
  user.save
  user = User.find_by username: @username
  expect(user).to_not be_nil
end

Dado('que estou na página de login') do
  visit '/login'
  expect(current_path).to eq '/login'
end

Dado('que eu estou na página de cadastro') do
  visit '/register'
  expect(current_path).to eq '/register'
end

Quando('eu clico em {string}') do |string|
  click_on string
end

Então('eu deveria ser redirecionado para a página de cadastro') do
  expect(current_path).to eq '/signup'
end

Quando('eu preencho o campo username') do
  fill_in 'username', with: @username
end

Quando('eu tento me cadastrar') do
  visit '/register'
  fill_in 'name', with: @name
  fill_in 'username', with: @username
  fill_in 'password', with: @password
  fill_in 'check_password', with: @password
  click_on 'Cadastrar'
end

Quando('eu preencho os campos senha') do
  fill_in 'password', with: @password
  fill_in 'check_password', with: @password
end

Quando('eu preencho diferentemente os campos senha') do
  fill_in 'password', with: @password
  fill_in 'check_password', with: 'o giuspepe sempre comete erros de digitação'
  # Sim, eu cometo um a cada duas linhas.
  # 90% dos meus bugs são por isso
end

Quando('eu preencho o campo nome') do
  fill_in 'password', with: @name
end

Quando('eu tento fazer login') do
  visit 'login'
  expect(current_path).to eq '/login'

  fill_in 'username', with: @username
  fill_in 'password', with: @password
  click_on 'Entrar'
end

Então('eu deveria ver minha área pessoal') do
  expect(current_path).to eq '/me'
end

Então('eu deveria ver {string}') do |string|
  expect(page).to have_content string
end

Então('eu deveria ser cadastrado no sistema') do
  user = User.find_by username: @username
  expect(user).to_not be_nil
end