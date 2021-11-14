
# Define as credenciais que o usuário usaria antes de começar os steps
Before '@mentalize_suas_credenciais' do
  @username = FFaker::Internet.user_name
  @password = FFaker::Internet.password
  @name = FFaker::Name::name
end

Quando('eu preencho o campo username') do
  fill_in 'username', with: @username
end

Quando('eu tento me cadastrar de novo') do
  visit '/register'
  fill_in 'name', with: @my_account.name
  fill_in 'username', with: @my_account.username
  fill_in 'password', with: @my_account.password
  fill_in 'check_password', with: @my_account.password
  click_on 'Cadastrar'
end

Quando('eu preencho corretamente os campos de senha') do
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
  fill_in 'name', with: @name
end

Quando('eu tento fazer login') do
  make_login @username, @password
end

Então('eu deveria ver {string}') do |string|
  expect(page).to have_content string
end

Então('eu deveria ser cadastrado como aluno') do
  user = User.find_by username: @username
  expect(user).to_not be_nil
  expect(user.kind).to eq 'learner'
end