########################## Dado
Dado 'que estou na página inicial' do
  visit '/games'
end

############ Quando
#Quando 'eu clico em {string}:' do |jogo|
 #   click_on "/#{jogo}/listar_coaches"
#end

#Quando('eu clico em jogo') do
 #   visit '/coaches'
#end

########################### Então
Então 'devo ver os games' do 
    expect(current_path).to eq '/games'
end

#Então('eu devo ver todos os coaches disponíveis') do    
    #expect(current_path).to eq "/#{game}/listar_coaches"
 #   expect(current_path).to eq '/coaches'
#end

#Quando('eu clico em um jogo') do
 #   pending # Write code here that turns the phrase above into concrete actions
 # end
