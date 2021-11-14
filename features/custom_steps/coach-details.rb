###################### Dado

# Cria um coach, se não existir, e retorna ele em @coach
Dado "que existe pelo menos um coach cadastrado" do
  all = Coach.all
  if all.length == 0
    user = FactoryBot::create :user
    @coach = FactoryBot::build :coach, user_id: user.id
    @coach.save
  else
    @coach = all[0]
    p @coach
    @coach.save
  end
end

Dado "que eu estou na página de detalhamento" do
  visit '/coach_details/1'
end

###################### Quando

Quando "eu clico em um coach" do
  find(".show", match: :first).click_link
end

Quando 'eu clico no botao de voltar' do
  click_link 'Voltar'
end

###################### Então

Então 'o botao de agendamento deve estar certo' do
  expect(page).to have_link('Agendar aula', href: "https://api.whatsapp.com/send?phone=#{@coach.whatsapp}&text=Gostaria de uma aula porfavor")
end
