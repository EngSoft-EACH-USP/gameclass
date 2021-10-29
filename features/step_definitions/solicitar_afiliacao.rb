include SessionHelper

Dado(/^que eu estou logado como ([^"]*)$/) do |arg|
  case arg
  when "aluno"
    kind = :learner
  when "coach"
    kind = :coach
  when "administrador"
    kind = :admin
  else
    raise "Tipo desconhecido \"#{arg}\"."
  end

  @user = FactoryBot::create :user, :kind => kind

  visit 'login'
  fill_in 'username', with: @user.username
  fill_in 'password', with: @user.password
  click_on 'Entrar'

  # Garante que estará logado antes de executar a próxima linha
  temp = current_path
  visit '/whoami'
  expect(page).to have_content 'You are logged as'
  visit temp  # Volta para a página anterior. Isso pode ser arriscado.
end

When(/^eu tento acessar a página de afiliação$/) do
  visit '/affiliate'
end

When(/^eu deveria ver um campo descrição$/) do
  expect(page).to have_field tagname: "textarea"
end

When(/^eu deveria ver um botão Enviar$/) do
  expect(page).to have_selector :link_or_button, "Enviar"
end

When(/^eu preencho o campo descrição com um texto$/) do
  @text = FFaker::LoremBR.sentences 10
  fill_in description, @text
end

When(/^eu clico no botão Enviar$/) do
  click_on "Enviar"
end

When(/^minha solicitação deveria ser registrada no sistema$/) do
  pending "Precisamos definir o banco de dados."
end

When(/^eu não deveria ver a página de afiliação$/) do
  expect(page).to_not have_field tagname: "textarea"
  expect(page).to_not have_selector :link_or_button, "Enviar"
end