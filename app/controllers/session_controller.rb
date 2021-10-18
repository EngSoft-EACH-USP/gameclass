
class SessionController < ApplicationController
    include SessionHelper
    skip_before_action :verify_authenticity_token

    # Renderiza o formulário de login
    def forms
        unless isLogged?
        	render :forms
        else
            redirect_to '/me'
        end
    end

    # Recebe um POST e confere as credenciais para efetuar um login.
    def login
        unless isLogged?
            @user = User.find_by username: params[:username]

			# Falha de segurança salvar a senha diretamente, mas é provisório
            if @user && @user.password == params[:password]
                connect @user
                redirect_to '/me'
            else
                @login_failed = true
                render :forms
            end
        end
    end

    # Efetua um logout, caso alguém esteja conectado à sessão.
    def logout
        disconnect_user
        redirect_to '/'
    end
end
