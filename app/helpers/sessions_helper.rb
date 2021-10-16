
module SessionsHelper
end

module SessionManager

    def isLogged?
        session[:logged]
    end

    def current_user
        unless isLogged? then return nil end
        user = User.find_by id: session[:user_id]
        return user
    end

    def hasPermission? *kinds
        user = current_user
        if user == nil then return false end
        return kinds.include? user.kind.to_sym
    end

    def login user
        if isLogged? then return end
        session[:logged] = true
        session[:user_id] = user.id
    end 

    def logout
        session[:logged] = false
        session[:user_id] = nil
    end

end
