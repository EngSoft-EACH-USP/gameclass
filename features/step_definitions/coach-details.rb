Before('@coach_mock') do
  @coach = Coach.new(name: "Paulo Kim", description: "Jogado de Lol", whatsapp: '11980770907')
  @coach.save
end

###################### Dado

Dado "que estou na pagina de listagem de coaches" do
  visit '/coaches'
end

Dado "que eu estou na página de detalhamento" do
  visit '/coach_details/1'
end

###################### Quando

Quando "eu clico em um coach" do
  click_link 'Show'
end

Quando 'eu clico no botao de voltar' do
  click_link 'Voltar'
end

###################### Então

Então "eu deveria ser redirecionado para a pagina de detalhamento" do
  expect(page).to have_selector(:link, 'Agendar aula')
end

Então 'o botao de agendamento deve estar certo' do
  expect(page).to have_link(nil, href: 'https://api.whatsapp.com/send?phone=11980770907&text=Gostaria de uma aula porfavor')
end

Então 'eu deveria ser redirecionado para a pagina de listagem dos coaches' do
  expect(page).to have_selector(:link, 'Show')
end
