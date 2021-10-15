
# Quando

Quando 'eu entro na minha página pessoal' do
    visit '/me'
    expect(current_path).to eq '/me'
end

Quando 'eu clico no botão sair' do
    click_on 'Sair'
end

# Então

Então 'eu devo encerrar a minha sessão particular' do
    # Meio gambiarra isso
    @temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are not logged in.'
    visit @temp
end

Então 'eu devo ser redirecionado para a página inicial' do
    expect(current_path).to eq '/'
end