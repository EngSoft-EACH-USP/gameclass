
# Este arquivo define todos os contextos relativos à sessão do usário (estar logado como administrador, por exemplo).

# Pode receber aluno, coach, professor, administrador, qualquer.
# Define a variável de instância @user como o usuário atual.
# Não faz login; só cadastra.
Dado /^que eu sou cadastrado como ([^"]*)$/ do |arg|
  # Verifica o tipo
  case arg
  when "aluno"
    kind = :learner
  when "coach"
    kind = :coach
  when "professor"
    kind = :coach
  when "administrador"
    kind = :admin
  when "qualquer"
    kind = %i[ learner coach admin ].sample
    p kind
  else
    raise "Tipo desconhecido \"#{arg}\"."
  end

  # Cria um usuário
  @user = FactoryBot::create :user, :kind => kind
end

# Define a variável de instância @user como o usuário atual.
Dado 'que eu estou logado' do
  # Tenta fazer login
  visit 'login'
  fill_in 'username', :with => @user.username
  fill_in 'password', :with => @user.password
  click_on 'Entrar'

  # Garante que estará logado antes de executar a próxima linha
  visit '/whoami'
  expect(page).to have_content 'You are logged as'
end

# Pode receber aluno, coach, professor, administrador, qualquer.
# Define a variável de instância @user como o usuário atual.
Dado /^que eu estou logado como ([^"]*)$/ do |arg|
  # Verifica o tipo
  case arg
    when "aluno"
      kind = :learner
    when "coach"
      kind = :coach
    when "professor"
      kind = :coach
    when "administrador"
      kind = :admin
    else
      raise "Tipo desconhecido \"#{arg}\"."
  end

  # Cria um usuário
  @user = FactoryBot::create :user, :kind => kind

  # Faz login manualmente
  visit '/login'
  fill_in 'username', with: @user.username
  fill_in 'password', with: @user.password
  click_on 'Entrar'

  # Garante que estará logado antes de executar a próxima linha
  visit '/whoami'
  expect(page).to have_content 'You are logged as' # Isso ainda causa acoplamento e precisa ser mudado.
end

Dado /^que eu não estou logado$/ do
  page.driver.submit :delete, 'login', {}
end