
# Ações relacionadas à navegação.

# Garante que ele esteja em uma página.
# Feito para funcionar tanto com "dado que eu estou 'na' página X" quanto com "dado qeu eu estou 'em a' página X"
Dado /^que eu estou ([n(em )])([^"]*)$/ do |_, page|
  url = url_of page
  visit url
  expect(current_url).to match url
end

# Tenta acessar uma página.
Quando /^eu tento acessar ([^"]*)$/ do |page|
  visit url_of page
end

# Garante o acesso a uma página ou avisa caso não seja possível.
Quando /^eu acesso ([^"]*)$/ do |page|
  url = url_of page
  visit url
  expect(current_url).to match url
end

Então /^eu deveria ser redirecionado para ([^"]*)$/ do |page|
  expect(current_path).to match url_of page
end

Então /^eu não deveria ser redirecionado para ([^"]*)$/ do |page|
  expect(current_path).to_not match url_of page
end

Então /^eu não deveria poder acessar ([^"]*)$/ do |page_name|
  visit url_of page_name
  expect(page.status_code).to_not eq 200
end

Então "eu não deveria ver a página" do
  expect(page.status_code).to_not eq 200
end