
class RegisterController < ApplicationController
    
  skip_before_action :verify_authenticity_token

  def index
    render :forms
  end

  def new
    # Esses dois campos são de instância para poderem ser acessados de volta na view.
    @username = params[:username]
    @name = params[:name]
    password = params[:password]

    if @username == '' || @name == '' || password == ''
      @missing_field = true
      p 'Tentativa de registrar faltando campo'
      render :forms

    elsif password != params[:check_password]
      @different_passwords = true
      p 'Tentativa de registrar com senhas difernetes'
      render :forms

    elsif User.find_by(username: @username)
      @username_unavaliable = true
      p 'Nome de usuário indisponível'
      render :forms

    else
      user = User.new username: @username, name: @name, password: password, kind: :learner
      user.save
      p "Usuário novo registrado: #{@name}"
      redirect_to '/login'
    end
  end
end
