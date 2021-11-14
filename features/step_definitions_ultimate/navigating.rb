
# Este arquivo define ações relacionadas à navegação.

def get_url(page_name)
  res = $page_names[page_name]
  unless res == nil
    return res
  end
  raise("Não existe uma página com o nome \"#{page_name}\". Certifique-se de que descreveu o nome corretamente ou consulte o arquivo ./features/page_names.rb.")
end

# Tenta acessar uma página.
Quando /^eu tento acessar ([^"]*)$/ do |page|
  visit get_url page
end

# Garante o acesso a uma página ou avisa caso não seja possível.
Quando /^eu acesso ([^"]*)$/ do |page|
  url = get_url page
  visit url
  expect(current_url).to match url
end