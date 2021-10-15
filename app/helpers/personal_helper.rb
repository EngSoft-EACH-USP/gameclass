module PersonalHelper

    def require_login
        unless sesion[:logged]
            render :login
        end
    end

end
