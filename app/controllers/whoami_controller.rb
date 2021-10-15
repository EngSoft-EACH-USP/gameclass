
class WhoamiController < ApplicationController
    def index
        if session[:logged]
            user = User.find_by(id: session[:user_id])
            render plain: "You are logged as #{user.name}."
        else
            render plain: 'You are not logged in.'
        end
    end
end
