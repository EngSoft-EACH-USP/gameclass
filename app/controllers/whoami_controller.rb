
class WhoamiController < ApplicationController
    include SessionHelper

    def index
        if isLogged?
            render plain: "You are logged as #{current_user.name}."
        else
            render plain: 'You are not logged in.'
        end
    end
end
