########################## Dado
Dado 'que estou na página inicial' do
  visit '/games'
end

############ Quando
Quando 'eu clico em {string}:' do |game|
    click_on "/#{game}/listar_coaches"
end

########################### Então
Então 'devo ver os games' do 
    expect(current_path).to eq '/games'
end

Então('devo ver todos os coaches disponíveis para aquele jogo') do    
    expect(current_path).to eq "/#{game}/listar_coaches"
end