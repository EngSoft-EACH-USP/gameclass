
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
  @username = FFaker::Internet.user_name
  fill_in 'username', with: @username
end

Quando('eu preencho os campos senha') do
  @password = FFaker::Internet.password
  fill_in 'password', with: @password
  fill_in 'check_password', with: @password
end

Quando('eu preencho diferentemente os campos senha') do
  fill_in 'password', with: 'o giuseppe sempre comete erros de digitação'
  fill_in 'check_password', with: 'o giuspepe sempre comete erros de digitação'
  # Sim, eu cometo um a cada duas linhas.
  # 90% dos meus bugs são por isso
end

Quando('eu preencho o campo nome') do
  @name = FFaker::Name::first_name
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