Então('eu deveria ver um botão {string}') do |string|
  expect(page).to have_selector :link_or_button, string
end

Quando('eu acesso minha área pessoal') do
  visit '/me'
end

Então('eu deveria ver a página de afiliação') do
  expect(page).to have_current_path "/affiliate"
end

Quando('eu clico no botão {string}') do |string|
  click_on string
end