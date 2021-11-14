
# Ações relacionados à interação do usuário com a interface do navegador.

# Exemplo: Quando eu preencho o campo Senha com "senha errada"
# field deve ser exatamente igual à label que se refere ao campo. Caso não haja, deve ser igual à propriedade name da tag.
# No entanto, é má prática se referir à propriedade name, visto que o teste de integração simula a interação de um
# usuário humano e ele não tem acesso direto à propriedade name da do campo.
Quando "eu preencho o campo {word} com {string}" do |field, value|
  fill_in field, with: value
end

# Preenche o campo com um lorem-ipsum aleatório e salva o valor em @text_field
Quando "eu preencho o campo {word} com qualquer texto" do |field|
  @text_field = FFaker::LoremBR.sentence 30
  fill_in field, with: @text_field
end

# Serve tanto para botão quanto para links que possuam nome com só uma palavra.
# "name" deve ser exatamente igual ao texto do botão ou link.
Quando "eu clico em {word}" do |name|
  click_on name, match: :first
end

# Serve tanto para botão quanto para links.
# "name" deve ser exatamente igual ao texto do botão ou link.
Quando "eu clico em {string}" do |name|
  click_on name
end

Quando 'eu clico no botão {word}' do |string|
  click_button string
end

Quando 'eu clico no botão {string}' do |string|
  click_button string
end

Então "eu deveria ver escrito {string}" do |message|
  expect(page).to have_content message
end

Então 'eu deveria ver um botão {word}' do |button|
  expect(page).to have_button button
end

Então 'eu deveria ver um botão {string}' do |button|
  expect(page).to have_button button
end

Então /^eu deveria ver um campo ([^"]*)$/ do |field|
  expect(page).to have_field field
end