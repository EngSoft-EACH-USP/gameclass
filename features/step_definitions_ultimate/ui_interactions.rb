
# Este arquivo define as interações que um usuário pode ter com com a interface gráfica do navegador.

# Exemplo: Quando eu preencho o campo Senha com "senha errada"
# field deve ser exatamente igual à label que se refere ao campo. Caso não haja, deve ser igual à propriedade name da tag.
# No entanto, é má prática se referir à propriedade name, visto que o teste de integração simula a interação de um
# usuário humano e ele não tem acesso direto à propriedade name da do campo.
Quando "eu preencho o campo {word} com {string}" do |field, value|
  fill_in field, with: value
end

# Serve tanto para botão quanto para links que possuam nome com só uma palavra.
# "name" deve ser exatamente igual ao texto do botão ou link.
Quando "eu clico em {word}" do |name|
  click_on name
end

# Serve tanto para botão quanto para links.
# "name" deve ser exatamente igual ao texto do botão ou link.
Quando "eu clico em {string}" do |name|
  click_on name
end