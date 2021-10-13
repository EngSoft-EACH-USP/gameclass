
Dado 'que estou na página inicial' do
  visit '/games'
  expect(current_path).to eq '/games'
end

Quando 'eu clico em {string}:' do |game|
    click_on "/#{game}/listar_coaches"
end





Então('devo ver todos os coaches disponíveis para aquele jogo') do    
    expect(current_path).to eq '/lol/listar_coaches'
end

Então('devo ver todos os coaches disponíveis para aquele jogo') do
    expect(current_path).to eq '/dota2/listar_coaches'
end

Então('devo ver todos os coaches disponíveis para aquele jogo') do
    expect(current_path).to eq '/osu/listar_coaches'
end

#expect(page).to have_content("This is what I'm doing today.")' 