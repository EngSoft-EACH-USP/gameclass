
class SessionsController < ApplicationController

    include SessionManager
    skip_before_action :verify_authenticity_token
    
    def forms
        unless isLogged?
        	render :forms
        else
            redirect_to '/me'
        end
    end

    def create
        unless isLogged?
            @user = User.find_by username: params[:username]

			# Falha de segurança salvar a senha diretamente, mas é provisório
            if @user && @user.password == params[:password]
				login @user
                redirect_to '/me'
            else
                @login_failed = true
                render :forms
            end
        end
    end

    def destroy
        logout
        redirect_to '/'
    end
end
