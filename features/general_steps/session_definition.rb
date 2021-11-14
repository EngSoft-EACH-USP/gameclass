
# Este arquivo define todos os contextos relativos à sessão do usário (estar logado como administrador, por exemplo).

# Pode receber aluno, coach, professor, administrador, qualquer.
# Define a variável de instância @user como o usuário atual.
# Não faz login; só cadastra.
Dado /^que eu sou cadastrado como ([^"]*)$/ do |arg|
  kind = get_kind arg
  @my_account = FactoryBot::create :user, :kind => kind
end

Dado /^que eu sou cadastrado, só não como ([^"]*)$/ do |arg|
  kind = get_kind arg

  # Sei que isso é subótimo
  all = %i[ learner coach admin ]

  sample = all.sample
  while sample == kind
    sample = all.sample
  end

  # Cria um usuário
  @my_account = FactoryBot::create :user, :kind => sample
end

# Define a variável de instância @user como o usuário atual.
Dado 'que eu estou logado' do
  make_login @my_account.username, @my_account.password

  visit '/whoami'
  expect(page).to have_content 'You are logged as'
end

# Pode receber aluno, coach, professor, administrador, qualquer.
# Define a variável de instância @user como o usuário atual.
Dado /^que eu estou logado como ([^"]*)$/ do |arg|
  kind = get_kind arg
  @my_account = FactoryBot::create :user, :kind => kind
  make_login @my_account.username, @my_account.password

  # Garante que estará logado antes de executar a próxima linha
  visit '/whoami'
  expect(page).to have_content 'You are logged as' # Isso ainda causa acoplamento e precisa ser mudado.
end

Dado /^que eu não estou logado$/ do
  page.driver.submit :delete, 'login', {}
end