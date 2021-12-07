include SessionHelper

Dado('que eu nao estou logado como administrador') do
  @user = FactoryBot::create :user, :kind => :learner
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

Então ('um coach deve ser criado') do
  coach = Coach.find_by(user_id: @deve_ser_aceito.id)
  expect(coach.user).to eq @deve_ser_aceito
end

Então ('o usuario deve ser atualizado') do
  user = User.find_by_id(@deve_ser_aceito.id)
  expect(user.kind).to eq 'coach'
end

Então ('eu deveria ver a página de solicitacoes') do
  expect(page).to have_content "Descrição"
  expect(page).to have_content "Estado"
end