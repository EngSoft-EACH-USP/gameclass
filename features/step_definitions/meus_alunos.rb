Dado(/^que eu estou logado como ([^"]*)$/) do |arg|
    case arg
    when "aluno"
      kind = :learner
    when "coach"
      kind = :coach
    when "administrador"
      kind = :admin
    else
      raise "Tipo desconhecido \"#{arg}\"."
    end
  
    @user = FactoryBot::create :user, :kind => coach
  
    visit 'login'
    fill_in 'username', with: @user.username
    fill_in 'password', with: @user.password
    click_on 'Entrar'
  
    # Garante que estará logado antes de executar a próxima linha
    temp = current_path
    visit '/whoami'
    expect(page).to have_content 'You are logged as'
    visit temp  # Volta para a página anterior. Isso pode ser arriscado.
  end
  
  Quando(/^eu tento acessar a página de alunos$/) do
    visit "/meus_alunos"
  end
  