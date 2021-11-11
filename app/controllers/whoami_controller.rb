
class WhoamiController < ApplicationController
    include SessionHelper

    def index
        if is_logged?
            render plain: "You are logged as #{current_user.name}."
        else
            render plain: 'You are not logged in.'
        end
    end
end
