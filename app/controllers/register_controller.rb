
class RegisterController < ApplicationController
    
  skip_before_action :verify_authenticity_token

  def forms
    render :forms
  end

  def register
    # Esses dois campos são de instância para poderem ser acessados de volta na view.
    @username = params[:username]
    @name = params[:name]
    password = params[:password]

    if @username == '' || @name == '' || password == ''
      @missing_field = true
      render :forms

    elsif password != params[:check_password]
      @different_passwords = true
      render :forms

    elsif User.find_by(username: @username)
      @username_unavailable = true
      render :forms

    else
      User.new(username: @username, name: @name, password: password, kind: :learner).save
      redirect_to '/login'
    end
  end
end
