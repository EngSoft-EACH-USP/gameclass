
def get_kind string
  if string == 'qualquer'
    %i[ learner coach admin ].sample
  else
    authentications = {
      "aluno"           => :learner,
      "professor"       => :coach,
      "coach"           => :coach,
      "administrador"   => :admin
    }
    res = authentications[string]
    if res == nil
      raise "Não existe um tipo de autenticação chamado #{string}."
    end
    res
  end
end

# Cuidado!
def make_login(username, password)
  visit '/login'
  fill_in 'username', with: username
  fill_in 'password', with: password
  click_on 'Entrar'
end

def url_of(page_name)
  res = $page_urls[page_name]
  unless res == nil
    return res
  end
  raise("Não existe uma página com o nome \"#{page_name}\". Verifique a ortografia ou consulte o arquivo em ./features/Nome das páginas.rb.")
end