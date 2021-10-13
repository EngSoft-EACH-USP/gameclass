
class SessionsController < ApplicationController
    
    def forms
        unless session[:logged]
        	render :forms
        # Se ele já estava logado, só redireciona para sua página pessoal
        else
            redirect_to '/me'
        end
    end

    def create
		# Verifica se o usuário já não está logado
        unless session[:logged]
            @user = User.find_by(username: params[:username])

			# Falha de segurança salvar a senha diretamente, mas é provisório
            if @user && @user.password == params[:password]
				session[:user_id] = @user.id
				session[:logged] = true

                redirect_to '/me'
            else
                @login_failed = true
                render :forms
            end
        end
    end

    def destroy
        if session[:logged]
            session[:logged] = false
            session[:user] = nil
            session[:user_id] = nil
        end

        redirect_to '/'
    end
end
