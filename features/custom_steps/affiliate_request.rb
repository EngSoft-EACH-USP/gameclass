
Então(/^minha solicitação deveria ser registrada no sistema$/) do
  req = AffiliateRequest.find_by user: @my_account
  expect(req.description).to eq @text_field
end

Então(/^eu não deveria ver a página de afiliação$/) do
  expect(page).to_not have_field "description"
  expect(page).to_not have_selector :link_or_button, "Enviar"
end