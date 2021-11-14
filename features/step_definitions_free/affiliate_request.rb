
Quando(/^eu preencho o campo descrição com um texto$/) do
  @text = FFaker::LoremBR.sentence 10
  fill_in "description",with: @text
end

# Preciso refatorar esses dois
Então(/^minha solicitação deveria ser registrada no sistema$/) do
  req = AffiliateRequest.find_by user: @user
  expect(req.description).to eq @text
end

Então(/^eu não deveria ver a página de afiliação$/) do
  expect(page).to_not have_field "description"
  expect(page).to_not have_selector :link_or_button, "Enviar"
end