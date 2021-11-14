Dado('que eu estou na página de edição sem estar logado') do
  visit '/infos/1'
end

Então('era para eu ser redirecionado para a página de login') do
  expect(current_path).to eq '/login'
end

Dado('que eu estou na página de edição logado') do
  visit 'login'
  fill_in 'username', :with => @username
  fill_in 'password', :with => @password
  click_on 'Entrar'
  
  visit '/infos/1'
end

Quando('preencho o campo username que nao existe') do
  fill_in 'username', with: 'Novo'
  click_on 'Editar'
end

Quando('preencho o campo username com um username que existe') do
  fill_in 'username', with: @username
  click_on 'Editar'
end

Quando('preencho os campos nome') do
  fill_in 'name', with: @name
  fill_in 'username', with: ''
  click_on 'Editar'
end

Quando('preencho diferentemente os campos senha') do
  fill_in 'password', with: @password
  fill_in 'check_password', with: 'errei...'
  click_on 'Editar'
end

Quando('preencho o campo senha e confirmacao de senha certo') do
  fill_in 'username', with: ''
  fill_in 'password', with: @password
  fill_in 'check_password', with: @password
  click_on 'Editar'
end

Então('era para eu ser redirecionado para a página de me') do
  expect(current_path).to eq '/me'
end

Então('era para eu ver {string}') do |string|
  expect(page).to have_content string
end
