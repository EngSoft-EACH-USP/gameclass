
class SessionsController < ApplicationController
    
    def forms
        unless session[:logged]
        	render :forms
		else
			redirect_to '/'
		end
    end

    def create
		# Verifica se o usuário já não está logado
        unless session[:logged]
            @user = User.find_by(username: params[:username])

			# Falha de segurança salvar a senha diretamente, mas é provisório
            if @user && @user.password == params[:password]
				session[:user_id] = @user.id
                session[:user] = @user
				session[:logged] = true
                render :sucesso_teste
            else
                render :fail
            end
		else
			redirect_to '/'
        end
    end
end
