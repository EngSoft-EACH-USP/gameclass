
Então(/^minha solicitação deveria ser registrada no sistema$/) do
  req = AffiliateRequest.find_by user: @my_account
  expect(req.description).to eq @text_field
end