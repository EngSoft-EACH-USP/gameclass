include SessionHelper

Dado ('que eu nao estou logado') do
  
end

Dado ('que eu nao estou logado como administrador') do
  @user = FactoryBot::create :user, :kind => :learner
  visit '/login'
  fill_in 'username', with: @user.username
  fill_in 'password', with: @user.password
  click_on 'Entrar'
end

Dado ('que eu entro no sistema como admin') do
  @user = FactoryBot::create :user, :kind => :admin
  visit '/login'
  fill_in 'username', with: @user.username
  fill_in 'password', with: @user.password
  click_on 'Entrar'
end

Dado ('que eu estou na pagina de listagem de solicitacoes') do
  @user = FactoryBot::create :user, :kind => :admin
  visit '/login'
  fill_in 'username', with: @user.username
  fill_in 'password', with: @user.password
  click_on 'Entrar'
  visit '/admin/affiliate'
end

Quando ('eu tento acessar a pagina de listagem de solicitacoes') do
  visit '/admin/affiliate'
end

Quando ('eu clico no botao de aceitar') do
  id = @affiliate_accept.id
  within ".row_#{id}" do
    click_on "Aceitar"
  end
end

Quando ('eu clico no botao de rejeitar') do
  id = @affiliate_reject.id
  within ".row_#{id}" do
    click_on "Rejeitar"
  end
end

Então ('eu não deveria ver a página de solicitacoes') do
  expect(page).to have_current_path "/admin/affiliate"
end

Então ('eu deveria ver a página de solicitacoes') do
  expect(page).to have_content "Description"
  expect(page).to have_content "Status"
end

Então 'eu deveria ser redirecionado para a pagina de listagem' do
  expect(page).to have_current_path '/admin/affiliate'
end