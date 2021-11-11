class MeusAlunosController < ApplicationController
    include SessionHelper
    def index
        if !is_logged?
            head :unauthorized
        elsif current_user.kind != "coach"
            head :forbidden
        else
            render :meus_alunos
        end
    end
end