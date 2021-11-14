
# Este arquivo define as expectativas.

Então /^eu deveria ser redirecionado para ([^"]*)$/ do |page|
  expect(current_path).to match get_url page
end

Então /^eu não deveria ser redirecionado para ([^"]*)$/ do |page|
  expect(current_path).to_not match get_url page
end

Então "eu deveria ver escrito {string}" do |message|
  expect(page).to have_content message
end

Então /^eu deveria ver um botão ([^"]*)$/ do |button|
  expect(page).to have_button button
end

Então /^eu deveria ver um campo ([^"]*)$/ do |field|
  expect(page).to have_field field
end